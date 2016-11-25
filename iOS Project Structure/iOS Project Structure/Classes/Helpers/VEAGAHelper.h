//
//  VEAGAHelper.h
//  iOS Project Structure
//
//  Created by Vea Novenario on 25/11/2016.
//  Copyright © 2016 Vea Novenario. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface VEAGAHelper : NSObject

+ (VEAGAHelper *)instance;

- (void)trackScreenName:(NSString *)name;
- (void)trackLoggedInUser;

@end
