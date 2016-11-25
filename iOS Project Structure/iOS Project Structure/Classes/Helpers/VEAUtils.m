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

+ (id)showEmptyIfNull:(id)object {
    return object ?: @"";
}

@end
