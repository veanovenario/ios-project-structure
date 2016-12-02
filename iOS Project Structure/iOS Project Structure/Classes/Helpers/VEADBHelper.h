//
//  VEADBHelper.h
//  iOS Project Structure
//
//  Created by Vea Novenario on 28/11/2016.
//  Copyright © 2016 Vea Novenario. All rights reserved.
//

#import <Foundation/Foundation.h>
// Models
#import "VEAUser.h"
#import "RLMUser.h"

@interface VEADBHelper : NSObject

+(VEADBHelper *)instance;

// Users
-(RLMResults *)getUsers;
-(RLMResults *)getUserWithUserId:(int)userId;
-(void)insertOrUpdateUserWithUser:(VEAUser *)userObj;
-(void)deleteUserWithUserId:(int)userId;

@end
