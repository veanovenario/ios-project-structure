//
//  VEAAPIHelper.h
//  iOS Project Structure
//
//  Created by Vea Novenario on 25/11/2016.
//  Copyright © 2016 Vea Novenario. All rights reserved.
//

#import <Foundation/Foundation.h>
// Libraries
#import "AFNetworking.h"
// Models
#import "VEAAPIResult.h"
#import "VEAUser.h"

typedef void (^CompletionBlock)(VEAAPIResult *resultObj);

@interface VEAAPIHelper : NSObject

@property (nonatomic, strong) AFHTTPSessionManager *manager;

// User
-(void)loginWithUser:(VEAUser *)userObj completion:(CompletionBlock)block;

@end
