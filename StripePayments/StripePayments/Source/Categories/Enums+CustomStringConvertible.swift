//
//  Enums+CustomStringConvertible.swift
//  Stripe
//
//  Autogenerated by generate_objc_enum_string_values.rb
//  Copyright © 2021 Stripe, Inc. All rights reserved.
//

/// :nodoc:
extension STPBankAccountHolderType: CustomStringConvertible {
    public var description: String {
        switch self {
        case .company:
            return "company"
        case .individual:
            return "individual"
        }
    }
}

/// :nodoc:
extension STPBankAccountStatus: CustomStringConvertible {
    public var description: String {
        switch self {
        case .errored:
            return "errored"
        case .new:
            return "new"
        case .validated:
            return "validated"
        case .verificationFailed:
            return "verificationFailed"
        case .verified:
            return "verified"
        }
    }
}

/// :nodoc:
extension STPCardBrand: CustomStringConvertible {
    public var description: String {
        switch self {
        case .JCB:
            return "JCB"
        case .amex:
            return "amex"
        case .dinersClub:
            return "dinersClub"
        case .discover:
            return "discover"
        case .mastercard:
            return "mastercard"
        case .unionPay:
            return "unionPay"
        case .cartesBancaires:
            return "cartesBancaires"
        case .unknown:
            return "unknown"
        case .visa:
            return "visa"
        }
    }
}

/// :nodoc:
extension STPCardFundingType: CustomStringConvertible {
    public var description: String {
        switch self {
        case .credit:
            return "credit"
        case .debit:
            return "debit"
        case .other:
            return "other"
        case .prepaid:
            return "prepaid"
        }
    }
}

/// :nodoc:
extension STPCollectBankAccountError: CustomStringConvertible {
    public var description: String {
        switch self {
        case .financialConnectionsSDKNotLinked:
            return "financialConnectionsSDKNotLinked"
        case .invalidClientSecret:
            return "invalidClientSecret"
        case .unexpectedError:
            return "unexpectedError"
        }
    }
}

/// :nodoc:
extension STPConnectAccountBusinessType: CustomStringConvertible {
    public var description: String {
        switch self {
        case .company:
            return "company"
        case .individual:
            return "individual"
        case .none:
            return "nil"
        }
    }
}

/// :nodoc:
extension STPFPXBankBrand: CustomStringConvertible {
    public var description: String {
        switch self {
        case .BSN:
            return "BSN"
        case .CIMB:
            return "CIMB"
        case .HSBC:
            return "HSBC"
        case .KFH:
            return "KFH"
        case .RHB:
            return "RHB"
        case .UOB:
            return "UOB"
        case .affinBank:
            return "affinBank"
        case .allianceBank:
            return "allianceBank"
        case .ambank:
            return "ambank"
        case .bankIslam:
            return "bankIslam"
        case .bankMuamalat:
            return "bankMuamalat"
        case .bankRakyat:
            return "bankRakyat"
        case .hongLeongBank:
            return "hongLeongBank"
        case .maybank2E:
            return "maybank2E"
        case .maybank2U:
            return "maybank2U"
        case .ocbc:
            return "ocbc"
        case .publicBank:
            return "publicBank"
        case .standardChartered:
            return "standardChartered"
        case .unknown:
            return "unknown"
        }
    }
}

/// :nodoc:
extension STPFilePurpose: CustomStringConvertible {
    public var description: String {
        switch self {
        case .disputeEvidence:
            return "disputeEvidence"
        case .identityDocument:
            return "identityDocument"
        case .unknown:
            return "unknown"
        }
    }
}

/// :nodoc:
extension STPIntentActionType: CustomStringConvertible {
    public var description: String {
        switch self {
        case .BLIKAuthorize:
            return "BLIKAuthorize"
        case .OXXODisplayDetails:
            return "OXXODisplayDetails"
        case .alipayHandleRedirect:
            return "alipayHandleRedirect"
        case .boletoDisplayDetails:
            return "boletoDisplayDetails"
        case .redirectToURL:
            return "redirectToURL"
        case .unknown:
            return "unknown"
        case .upiAwaitNotification:
            return "upiAwaitNotification"
        case .useStripeSDK:
            return "useStripeSDK"
        case .verifyWithMicrodeposits:
            return "verifyWithMicrodeposits"
        case .weChatPayRedirectToApp:
            return "weChatPayRedirectToApp"
        case .cashAppRedirectToApp:
            return "cashAppRedirectToApp"
        case .payNowDisplayQrCode:
            return "payNowDisplayQrCode"
        }
    }
}

/// :nodoc:
extension STPIntentActionUseStripeSDKType: CustomStringConvertible {
    public var description: String {
        switch self {
        case .threeDS2Fingerprint:
            return "threeDS2Fingerprint"
        case .threeDS2Redirect:
            return "threeDS2Redirect"
        case .unknown:
            return "unknown"
        }
    }
}

/// :nodoc:
extension STPKlarnaLineItemType: CustomStringConvertible {
    public var description: String {
        switch self {
        case .SKU:
            return "SKU"
        case .shipping:
            return "shipping"
        case .tax:
            return "tax"
        }
    }
}

/// :nodoc:
extension STPKlarnaPaymentMethods: CustomStringConvertible {
    public var description: String {
        switch self {
        case .installments:
            return "installments"
        case .none:
            return "none"
        case .payIn4:
            return "payIn4"
        case .payIn4OrInstallments:
            return "payIn4OrInstallments"
        }
    }
}

/// :nodoc:
extension STPMandateCustomerAcceptanceType: CustomStringConvertible {
    public var description: String {
        switch self {
        case .offline:
            return "offline"
        case .online:
            return "online"
        }
    }
}

/// :nodoc:
extension STPMicrodepositType: CustomStringConvertible {
    public var description: String {
        switch self {
        case .amounts:
            return "amounts"
        case .descriptorCode:
            return "descriptorCode"
        case .unknown:
            return "unknown"
        }
    }
}

/// :nodoc:
extension STPPaymentHandlerActionStatus: CustomStringConvertible {
    public var description: String {
        switch self {
        case .canceled:
            return "canceled"
        case .failed:
            return "failed"
        case .succeeded:
            return "succeeded"
        }
    }
}

/// :nodoc:
extension STPPaymentHandlerErrorCode: CustomStringConvertible {
    public var description: String {
        switch self {
        case .intentStatusErrorCode:
            return "intentStatusErrorCode"
        case .invalidClientSecret:
            return "invalidClientSecret"
        case .noConcurrentActionsErrorCode:
            return "noConcurrentActionsErrorCode"
        case .notAuthenticatedErrorCode:
            return "notAuthenticatedErrorCode"
        case .paymentErrorCode:
            return "paymentErrorCode"
        case .requiredAppNotAvailable:
            return "requiredAppNotAvailable"
        case .requiresAuthenticationContextErrorCode:
            return "requiresAuthenticationContextErrorCode"
        case .requiresPaymentMethodErrorCode:
            return "requiresPaymentMethodErrorCode"
        case .stripe3DS2ErrorCode:
            return "stripe3DS2ErrorCode"
        case .timedOutErrorCode:
            return "timedOutErrorCode"
        case .unsupportedAuthenticationErrorCode:
            return "unsupportedAuthenticationErrorCode"
        }
    }
}

/// :nodoc:
extension STPPaymentIntentActionType: CustomStringConvertible {
    public var description: String {
        switch self {
        case .redirectToURL:
            return "redirectToURL"
        case .unknown:
            return "unknown"
        }
    }
}

/// :nodoc:
extension STPPaymentIntentCaptureMethod: CustomStringConvertible {
    public var description: String {
        switch self {
        case .automatic:
            return "automatic"
        case .manual:
            return "manual"
        case .unknown:
            return "unknown"
        }
    }
}

/// :nodoc:
extension STPPaymentIntentConfirmationMethod: CustomStringConvertible {
    public var description: String {
        switch self {
        case .automatic:
            return "automatic"
        case .manual:
            return "manual"
        case .unknown:
            return "unknown"
        }
    }
}

/// :nodoc:
extension STPPaymentIntentLastPaymentErrorType: CustomStringConvertible {
    public var description: String {
        switch self {
        case .api:
            return "api"
        case .apiConnection:
            return "apiConnection"
        case .authentication:
            return "authentication"
        case .card:
            return "card"
        case .idempotency:
            return "idempotency"
        case .invalidRequest:
            return "invalidRequest"
        case .rateLimit:
            return "rateLimit"
        case .unknown:
            return "unknown"
        }
    }
}

/// :nodoc:
extension STPPaymentIntentSetupFutureUsage: CustomStringConvertible {
    public var description: String {
        switch self {
        case .none:
            return "none"
        case .offSession:
            return "offSession"
        case .onSession:
            return "onSession"
        case .unknown:
            return "unknown"
        }
    }
}

/// :nodoc:
@available(
    *,
    deprecated,
    message: "Use STPIntentActionType instead",
    renamed: "STPIntentActionType"
)
extension STPPaymentIntentSourceActionType: CustomStringConvertible {
    public var description: String {
        switch self {
        case .authorizeWithURL:
            return "authorizeWithURL"
        case .unknown:
            return "unknown"
        }
    }
}

/// :nodoc:
extension STPPaymentIntentStatus: CustomStringConvertible {
    public var description: String {
        switch self {
        case .canceled:
            return "canceled"
        case .processing:
            return "processing"
        case .requiresAction:
            return "requiresAction"
        case .requiresCapture:
            return "requiresCapture"
        case .requiresConfirmation:
            return "requiresConfirmation"
        case .requiresPaymentMethod:
            return "requiresPaymentMethod"
        case .requiresSource:
            return "requiresSource"
        case .requiresSourceAction:
            return "requiresSourceAction"
        case .succeeded:
            return "succeeded"
        case .unknown:
            return "unknown"
        }
    }
}

/// :nodoc:
extension STPPaymentMethodCardCheckResult: CustomStringConvertible {
    public var description: String {
        switch self {
        case .failed:
            return "failed"
        case .pass:
            return "pass"
        case .unavailable:
            return "unavailable"
        case .unchecked:
            return "unchecked"
        case .unknown:
            return "unknown"
        }
    }
}

/// :nodoc:
extension STPPaymentMethodCardWalletType: CustomStringConvertible {
    public var description: String {
        switch self {
        case .amexExpressCheckout:
            return "amexExpressCheckout"
        case .applePay:
            return "applePay"
        case .googlePay:
            return "googlePay"
        case .masterpass:
            return "masterpass"
        case .samsungPay:
            return "samsungPay"
        case .unknown:
            return "unknown"
        case .visaCheckout:
            return "visaCheckout"
        }
    }
}

/// :nodoc:
extension STPPaymentMethodType: CustomStringConvertible {
    public var description: String {
        switch self {
        case .AUBECSDebit:
            return "AUBECSDebit"
        case .EPS:
            return "EPS"
        case .FPX:
            return "FPX"
        case .OXXO:
            return "OXXO"
        case .SEPADebit:
            return "SEPADebit"
        case .UPI:
            return "UPI"
        case .USBankAccount:
            return "USBankAccount"
        case .affirm:
            return "affirm"
        case .afterpayClearpay:
            return "afterpayClearpay"
        case .alipay:
            return "alipay"
        case .bacsDebit:
            return "bacsDebit"
        case .bancontact:
            return "bancontact"
        case .blik:
            return "blik"
        case .boleto:
            return "boleto"
        case .card:
            return "card"
        case .cardPresent:
            return "cardPresent"
        case .giropay:
            return "giropay"
        case .grabPay:
            return "grabPay"
        case .iDEAL:
            return "iDEAL"
        case .klarna:
            return "klarna"
        case .link:
            return "link"
        case .linkInstantDebit:
            return "linkInstantDebit"
        case .netBanking:
            return "netBanking"
        case .payPal:
            return "payPal"
        case .przelewy24:
            return "przelewy24"
        case .sofort:
            return "sofort"
        case .unknown:
            return "unknown"
        case .weChatPay:
            return "weChatPay"
        case .cashApp:
            return "cashApp"
        }
    }
}

/// :nodoc:
extension STPPaymentMethodUSBankAccountHolderType: CustomStringConvertible {
    public var description: String {
        switch self {
        case .company:
            return "company"
        case .individual:
            return "individual"
        case .unknown:
            return "unknown"
        }
    }
}

/// :nodoc:
extension STPPaymentMethodUSBankAccountType: CustomStringConvertible {
    public var description: String {
        switch self {
        case .checking:
            return "checking"
        case .savings:
            return "savings"
        case .unknown:
            return "unknown"
        }
    }
}

/// :nodoc:
extension STPPaymentStatus: CustomStringConvertible {
    public var description: String {
        switch self {
        case .error:
            return "error"
        case .success:
            return "success"
        case .userCancellation:
            return "userCancellation"
        }
    }
}

/// :nodoc:
extension STPPinStatus: CustomStringConvertible {
    public var description: String {
        switch self {
        case .ephemeralKeyError:
            return "ephemeralKeyError"
        case .errorVerificationAlreadyRedeemed:
            return "errorVerificationAlreadyRedeemed"
        case .errorVerificationCodeIncorrect:
            return "errorVerificationCodeIncorrect"
        case .errorVerificationExpired:
            return "errorVerificationExpired"
        case .errorVerificationTooManyAttempts:
            return "errorVerificationTooManyAttempts"
        case .success:
            return "success"
        case .unknownError:
            return "unknownError"
        }
    }
}

/// :nodoc:
extension STPRedirectContextError: CustomStringConvertible {
    public var description: String {
        switch self {
        case .appRedirectError:
            return "appRedirectError"
        }
    }
}

/// :nodoc:
extension STPRedirectContextState: CustomStringConvertible {
    public var description: String {
        switch self {
        case .cancelled:
            return "cancelled"
        case .completed:
            return "completed"
        case .inProgress:
            return "inProgress"
        case .notStarted:
            return "notStarted"
        }
    }
}

/// :nodoc:
extension STPSetupIntentLastSetupErrorType: CustomStringConvertible {
    public var description: String {
        switch self {
        case .API:
            return "API"
        case .apiConnection:
            return "apiConnection"
        case .authentication:
            return "authentication"
        case .card:
            return "card"
        case .idempotency:
            return "idempotency"
        case .invalidRequest:
            return "invalidRequest"
        case .rateLimit:
            return "rateLimit"
        case .unknown:
            return "unknown"
        }
    }
}

/// :nodoc:
extension STPSetupIntentStatus: CustomStringConvertible {
    public var description: String {
        switch self {
        case .canceled:
            return "canceled"
        case .processing:
            return "processing"
        case .requiresAction:
            return "requiresAction"
        case .requiresConfirmation:
            return "requiresConfirmation"
        case .requiresPaymentMethod:
            return "requiresPaymentMethod"
        case .succeeded:
            return "succeeded"
        case .unknown:
            return "unknown"
        }
    }
}

/// :nodoc:
extension STPSetupIntentUsage: CustomStringConvertible {
    public var description: String {
        switch self {
        case .none:
            return "none"
        case .offSession:
            return "offSession"
        case .onSession:
            return "onSession"
        case .unknown:
            return "unknown"
        }
    }
}

/// :nodoc:
extension STPSourceCard3DSecureStatus: CustomStringConvertible {
    public var description: String {
        switch self {
        case .`optional`:
            return "`optional`"
        case .`required`:
            return "`required`"
        case .notSupported:
            return "notSupported"
        case .recommended:
            return "recommended"
        case .unknown:
            return "unknown"
        }
    }
}

/// :nodoc:
extension STPSourceFlow: CustomStringConvertible {
    public var description: String {
        switch self {
        case .codeVerification:
            return "codeVerification"
        case .none:
            return "none"
        case .receiver:
            return "receiver"
        case .redirect:
            return "redirect"
        case .unknown:
            return "unknown"
        }
    }
}

/// :nodoc:
extension STPSourceRedirectStatus: CustomStringConvertible {
    public var description: String {
        switch self {
        case .failed:
            return "failed"
        case .notRequired:
            return "notRequired"
        case .pending:
            return "pending"
        case .succeeded:
            return "succeeded"
        case .unknown:
            return "unknown"
        }
    }
}

/// :nodoc:
extension STPSourceStatus: CustomStringConvertible {
    public var description: String {
        switch self {
        case .canceled:
            return "canceled"
        case .chargeable:
            return "chargeable"
        case .consumed:
            return "consumed"
        case .failed:
            return "failed"
        case .pending:
            return "pending"
        case .unknown:
            return "unknown"
        }
    }
}

/// :nodoc:
extension STPSourceType: CustomStringConvertible {
    public var description: String {
        switch self {
        case .EPS:
            return "EPS"
        case .P24:
            return "P24"
        case .SEPADebit:
            return "SEPADebit"
        case .alipay:
            return "alipay"
        case .bancontact:
            return "bancontact"
        case .card:
            return "card"
        case .giropay:
            return "giropay"
        case .iDEAL:
            return "iDEAL"
        case .klarna:
            return "klarna"
        case .multibanco:
            return "multibanco"
        case .sofort:
            return "sofort"
        case .threeDSecure:
            return "threeDSecure"
        case .unknown:
            return "unknown"
        case .weChatPay:
            return "weChatPay"
        }
    }
}

/// :nodoc:
extension STPSourceUsage: CustomStringConvertible {
    public var description: String {
        switch self {
        case .reusable:
            return "reusable"
        case .singleUse:
            return "singleUse"
        case .unknown:
            return "unknown"
        }
    }
}

/// :nodoc:
extension STPSourceVerificationStatus: CustomStringConvertible {
    public var description: String {
        switch self {
        case .failed:
            return "failed"
        case .pending:
            return "pending"
        case .succeeded:
            return "succeeded"
        case .unknown:
            return "unknown"
        }
    }
}

/// :nodoc:
extension STPThreeDSButtonTitleStyle: CustomStringConvertible {
    public var description: String {
        switch self {
        case .`default`:
            return "`default`"
        case .lowercase:
            return "lowercase"
        case .sentenceCapitalized:
            return "sentenceCapitalized"
        case .uppercase:
            return "uppercase"
        }
    }
}

/// :nodoc:
extension STPThreeDSCustomizationButtonType: CustomStringConvertible {
    public var description: String {
        switch self {
        case .`continue`:
            return "`continue`"
        case .cancel:
            return "cancel"
        case .next:
            return "next"
        case .resend:
            return "resend"
        case .submit:
            return "submit"
        }
    }
}

/// :nodoc:
extension STPTokenType: CustomStringConvertible {
    public var description: String {
        switch self {
        case .PII:
            return "PII"
        case .account:
            return "account"
        case .bankAccount:
            return "bankAccount"
        case .card:
            return "card"
        case .cvcUpdate:
            return "cvcUpdate"
        }
    }
}
