//
//  VEAUtils.m
//  iOS Project Structure
//
//  Created by Vea Novenario on 25/11/2016.
//  Copyright © 2016 Vea Novenario. All rights reserved.
//

#import "VEAUtils.h"

@implementation VEAUtils

#pragma mark - Validations

+(id)showEmptyIfNull:(id)object {
    return object ?: @"";
}

+(BOOL)isEmailValid:(NSString *)emailParam{
    
    // Remove space at the front and back of the string
    emailParam = [emailParam stringByTrimmingCharactersInSet:[NSCharacterSet whitespaceCharacterSet]];
    
    // Normal Implementation: Check email validity
    /*NSString *regExPattern = @"[A-Z0-9a-z._%+-]+@[A-Za-z0-9.-]+\\.[A-Za-z]{2,4}";
    NSRegularExpression *regEx = [[NSRegularExpression alloc] initWithPattern:regExPattern options:NSRegularExpressionCaseInsensitive error:nil];
    NSUInteger regExMatches = [regEx numberOfMatchesInString:emailParam options:0 range:NSMakeRange(0, [emailParam length])];
    
    if (regExMatches == 0) {
        return NO;
    } else {
        return YES;
    }*/
    
    // Stricter Implementation: Check email validity and also extra dots
    NSString *regex1 = @"\\A[a-z0-9]+([-._][a-z0-9]+)*@([a-z0-9]+(-[a-z0-9]+)*\\.)+[a-z]{2,4}\\z";
    NSString *regex2 = @"^(?=.{1,64}@.{4,64}$)(?=.{6,100}$).*";
    NSPredicate *test1 = [NSPredicate predicateWithFormat:@"SELF MATCHES %@", regex1];
    NSPredicate *test2 = [NSPredicate predicateWithFormat:@"SELF MATCHES %@", regex2];
    return [test1 evaluateWithObject:emailParam] && [test2 evaluateWithObject:emailParam];
}

@end
