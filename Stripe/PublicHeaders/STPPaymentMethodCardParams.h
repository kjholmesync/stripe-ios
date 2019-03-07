//
//  STPPaymentMethodCardParams.h
//  Stripe
//
//  Created by Yuki Tokuhiro on 3/6/19.
//  Copyright © 2019 Stripe, Inc. All rights reserved.
//

#import <Foundation/Foundation.h>

#import "STPFormEncodable.h"

NS_ASSUME_NONNULL_BEGIN

@interface STPPaymentMethodCardParams : NSObject <STPFormEncodable>

/**
 The card number, as a string without any separators. Ex. @"4242424242424242"
 */
@property (nonatomic, nullable) NSString *number;

/**
 Two-digit number representing the card's expiration month.
 */
@property (nonatomic, nullable) NSString *expMonth;

/**
 Two- or four-digit number representing the card's expiration year.
 */
@property (nonatomic, nullable) NSString *expYear;

/**
 For backwards compatibility, you can alternatively set this as a Stripe token (e.g., for apple pay)
 */
@property (nonatomic, nullable) NSString *token;

/**
 Card security code. It is highly recommended to always include this value.
 */
@property (nonatomic, nullable) NSString *cvc;

@end

NS_ASSUME_NONNULL_END
