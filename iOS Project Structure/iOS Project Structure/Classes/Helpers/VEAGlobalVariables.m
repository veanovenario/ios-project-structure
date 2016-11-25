//
//  VEAGlobalVariables.m
//  iOS Project Structure
//
//  Created by Vea Novenario on 25/11/2016.
//  Copyright © 2016 Vea Novenario. All rights reserved.
//

#import "VEAGlobalVariables.h"

static VEAGlobalVariables *sharedInstance = nil;

@implementation VEAGlobalVariables

#pragma mark - Singleton Method

+ (VEAGlobalVariables*)sharedInstance {
    if (sharedInstance == nil) {
        sharedInstance = [[super alloc] init];
    }
    return sharedInstance;
}

@end
