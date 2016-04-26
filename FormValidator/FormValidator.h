//
//  FormValidator.h
//  FormValidator
//
//  Created by Oliver Short on 4/26/16.
//  Copyright © 2016 Oliver Short. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface FormValidator : NSObject

-(BOOL)validateName:(NSString*)nameString;
-(BOOL)isValidAddress:(NSString*)addressString;
-(BOOL)isValidZipCode: (NSString*)zipString;
-(BOOL)isValidCity: (NSString*)cityString;
-(BOOL)isValidState:(NSString*)stateString;
-(BOOL)isValidPhoneNumber:(NSString*)phoneNumberString;

@end
