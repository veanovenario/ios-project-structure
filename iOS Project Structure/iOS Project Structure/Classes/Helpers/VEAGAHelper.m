//
//  VEAGAHelper.m
//  iOS Project Structure
//
//  Created by Vea Novenario on 25/11/2016.
//  Copyright © 2016 Vea Novenario. All rights reserved.
//

#import "VEAGAHelper.h"
// Libraries
#import <Google/Analytics.h>

@implementation VEAGAHelper

+ (VEAGAHelper *)instance {
    static VEAGAHelper *_instance = nil;
    
    @synchronized (self) {
        if (_instance == nil) {
            _instance = [[self alloc] init];
            
            [GAI sharedInstance].trackUncaughtExceptions = NO;
            [GAI sharedInstance].dispatchInterval = 2;
            
            [[[GAI sharedInstance] logger] setLogLevel:kGAILogLevelInfo];
            [[GAI sharedInstance] trackerWithTrackingId:@"UA-XXXXXXXX-X"];
        }
    }
    
    return _instance;
}

- (void)trackScreenName:(NSString *)name {
    
    DLog(@"GA: %@", name);
    
    id <GAITracker> tracker = [[GAI sharedInstance] defaultTracker];
    [tracker set:kGAIScreenName value:name];
    [tracker send:[[GAIDictionaryBuilder createScreenView] build]];
}

-(void)trackLoggedInUser{
    
    // Google Analytics
    id<GAITracker> tracker = [[GAI sharedInstance] defaultTracker];
    
    //TODO: Set the user_id in string format
    
    // You only need to set User ID on a tracker once. By setting it on the tracker, the ID will be sent with all subsequent hits.
    [tracker set:kGAIUserId value:@""];
}

@end
