//
//  STPTelemetryClient.swift
//  Stripe
//
//  Created by Ben Guo on 4/18/17.
//  Copyright © 2016 Stripe, Inc. All rights reserved.
//

import Foundation
import UIKit

private let TelemetryURL = URL(string: "https://m.stripe.com/6")!

final class STPTelemetryClient: NSObject {
    @objc(sharedInstance) static var shared: STPTelemetryClient = STPTelemetryClient(
        sessionConfiguration: STPAPIClient.sharedUrlSessionConfiguration)

    func addTelemetryFields(toParams params: inout [String: Any]) {
        params["muid"] = fraudDetectionData.muid
        params["guid"] = fraudDetectionData.guid
        fraudDetectionData.resetSIDIfExpired()
        params["sid"] = fraudDetectionData.sid
    }

    @objc func paramsByAddingTelemetryFields(toParams params: [String: Any]) -> [String: Any] {
        var mutableParams = params
        mutableParams["muid"] = fraudDetectionData.muid
        mutableParams["guid"] = fraudDetectionData.guid
        fraudDetectionData.resetSIDIfExpired()
        mutableParams["sid"] = fraudDetectionData.sid
        return mutableParams
    }

    /**
     Sends a payload of telemetry to the Stripe telemetry service.
     - Parameter forceSend: ⚠️ Always send the request. Only pass this for testing purposes.
     - Parameter completion: Called with the result of the telemetry network request.
     */
    func sendTelemetryData(
        forceSend: Bool = false,
        completion: ((Result<[String: Any], Error>) -> ())? = nil
    ) {
        guard forceSend || STPTelemetryClient.shouldSendTelemetry() else {
            completion?(.failure(NSError.stp_genericConnectionError()))
            return
        }
        var request = URLRequest(url: TelemetryURL)
        request.httpMethod = "POST"
        request.setValue("application/json", forHTTPHeaderField: "Content-Type")
        let data = try? JSONSerialization.data(
            withJSONObject: payload,
            options: []
        )
        request.httpBody = data
        let task = urlSession.dataTask(with: request as URLRequest) { (data, response, error) in
            guard
                error == nil,
                let response = response as? HTTPURLResponse,
                response.statusCode == 200,
                let data = data,
                let responseDict = try? JSONSerialization.jsonObject(with: data, options: []) as? [String: Any]
            else {
                completion?(.failure(error ?? NSError.stp_genericFailedToParseResponseError()))
                return
            }

            // Update fraudDetectionData
            if let muid = responseDict["muid"] as? String {
                self.fraudDetectionData.muid = muid
            }
            if let guid = responseDict["guid"] as? String {
                self.fraudDetectionData.guid = guid
            }
            if self.fraudDetectionData.sid == nil,
               let sid = responseDict["sid"] as? String {
                self.fraudDetectionData.sid = sid
                self.fraudDetectionData.sidCreationDate = Date()
            }
            completion?(.success(responseDict))
        }
        task.resume()
    }

    private let urlSession: URLSession

    class func shouldSendTelemetry() -> Bool {
        #if targetEnvironment(simulator)
            return false
        #else
            return StripeAPI.advancedFraudSignalsEnabled && NSClassFromString("XCTest") == nil
        #endif
    }

    init(sessionConfiguration config: URLSessionConfiguration) {
        urlSession = URLSession(configuration: config)
        super.init()
    }

    private var language = Locale.autoupdatingCurrent.identifier
    private lazy var fraudDetectionData = {
        return FraudDetectionData.shared
    }()
    lazy private var platform = [deviceModel, osVersion].joined(separator: " ")

    private var deviceModel: String = {
        var systemInfo = utsname()
        uname(&systemInfo)
        let model = withUnsafePointer(to: &systemInfo.machine) {
            $0.withMemoryRebound(to: CChar.self, capacity: 1) {
                ptr in String.init(validatingUTF8: ptr)
            }
        }
        return model ?? "Unknown"
    }()

    private var osVersion = UIDevice.current.systemVersion

    private var screenSize: String {
        let screen = UIScreen.main
        let screenRect = screen.bounds
        let width = screenRect.size.width
        let height = screenRect.size.height
        let scale = screen.scale
        return String(format: "%.0fw_%.0fh_%.0fr", width, height, scale)
    }

    private var timeZoneOffset: String {
        let timeZone = NSTimeZone.local as NSTimeZone
        let hoursFromGMT = Double(timeZone.secondsFromGMT) / (60 * 60)
        return String(format: "%.0f", hoursFromGMT)
    }

    private func encodeValue(_ value: String?) -> [AnyHashable: Any]? {
        if let value = value {
            return [
                "v": value
            ]
        }
        return nil
    }

    private var payload: [AnyHashable: Any] {
        var payload: [AnyHashable: Any] = [:]
        var data: [AnyHashable: Any] = [:]
        if let encode = encodeValue(language) {
            data["c"] = encode
        }
        if let encode = encodeValue(platform) {
            data["d"] = encode
        }
        if let encode = encodeValue(screenSize) {
            data["f"] = encode
        }
        if let encode = encodeValue(timeZoneOffset) {
            data["g"] = encode
        }
        payload["a"] = data

        // Don't pass expired SIDs to m.stripe.com
        fraudDetectionData.resetSIDIfExpired()

        let otherData: [String: Any] = [
            "d": fraudDetectionData.muid ?? "",
            "e": fraudDetectionData.sid ?? "",
            "k": Bundle.stp_applicationName() ?? "",
            "l": Bundle.stp_applicationVersion() ?? "",
            "m": NSNumber(value: StripeAPI.deviceSupportsApplePay()),
            "o": osVersion,
            "s": deviceModel,
        ]
        payload["b"] = otherData
        payload["tag"] = STPAPIClient.STPSDKVersion
        payload["src"] = "ios-sdk"
        payload["v2"] = NSNumber(value: 1)
        return payload
    }
}
