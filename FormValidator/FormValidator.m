//
//  FormValidator.m
//  FormValidator
//
//  Created by Oliver Short on 4/26/16.
//  Copyright © 2016 Oliver Short. All rights reserved.
//

#import "FormValidator.h"

@implementation FormValidator

-(BOOL)validateName: (NSString*)nameString {
    
    return [[nameString componentsSeparatedByString:@" "] count] > 1;
}

-(BOOL)isValidAddress:(NSString*)addressString{
    NSTextCheckingType detectorType = NSTextCheckingTypeAddress;
    
    NSError *error ;
    
    NSDataDetector *dataDector = [NSDataDetector dataDetectorWithTypes:detectorType error:&error];
    
    __block BOOL rc = NO;
    
    [dataDector enumerateMatchesInString:addressString options:kNilOptions range: NSMakeRange(0, [addressString length]) usingBlock:^(NSTextCheckingResult * _Nullable result, NSMatchingFlags flags, BOOL * _Nonnull stop) {
        rc = YES;
    }];
    
    return rc;
}

-(BOOL) isValidZipCode:(NSString *)zipString{
    BOOL rc  = NO;
    NSCharacterSet *set = [NSCharacterSet characterSetWithCharactersInString:@"123456789"];
    
    rc = ([zipString length] ==5) && ([zipString rangeOfCharacterFromSet:set].location != NSNotFound);
    
    return rc;
}

-(BOOL)isValidCity:(NSString *)cityString{
    
    return cityString.length > 0;
    
}

-(BOOL)isValidState:(NSString *)stateString{
 
    return stateString.length == 2;
}

-(BOOL)isValidPhoneNumber:(NSString *)phoneNumberString{
    NSTextCheckingType detectorType = NSTextCheckingTypePhoneNumber;
    
    NSError *error;
    
    NSDataDetector *dataDetector = [NSDataDetector dataDetectorWithTypes:detectorType error:&error];
    
    __block BOOL rc = NO;
    [dataDetector enumerateMatchesInString:phoneNumberString options:kNilOptions range:NSMakeRange(0, phoneNumberString.length) usingBlock:^(NSTextCheckingResult * _Nullable result, NSMatchingFlags flags, BOOL * _Nonnull stop) {
        rc = YES;
    }];
    return rc;
}

@end
