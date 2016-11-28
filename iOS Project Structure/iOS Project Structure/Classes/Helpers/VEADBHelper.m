//
//  VEADBHelper.m
//  iOS Project Structure
//
//  Created by Vea Novenario on 28/11/2016.
//  Copyright © 2016 Vea Novenario. All rights reserved.
//

#import "VEADBHelper.h"

static VEADBHelper *sharedInstance = nil;

@implementation VEADBHelper

+(VEADBHelper*)instance {
    if (sharedInstance == nil) {
        sharedInstance = [[super allocWithZone:NULL] init];
    }
    return sharedInstance;
}

#pragma mark - Users

-(RLMResults *)getUsers{
    return [RLMUser allObjects];
}

-(RLMResults *)getUserWithUserId:(int)userId{
    RLMResults<RLMUser *> *userResult = [RLMUser objectsWhere:@"userId = %d", userId];
    return userResult;
}

-(void)insertOrUpdateUserWithUser:(VEAUser *)userObj{
    RLMRealm *realm = [RLMRealm defaultRealm];
    
    RLMResults *results = [self getUserWithUserId:userObj.userId];
    if (results.count > 0) {
        
        // Update
        [realm beginWriteTransaction];
        RLMUser *dbUserObj = [results firstObject];;
        [dbUserObj updateWithUser:userObj];
        [realm commitWriteTransaction];
    }else{
        
        // Insert
        [realm beginWriteTransaction];
        RLMUser *dbUserObj = [[RLMUser alloc] initWithUser:userObj];
        [realm addObject:dbUserObj];
        [realm commitWriteTransaction];
    }
}

-(void)deleteUserWithUserId:(int)userId{
    RLMRealm *realm = [RLMRealm defaultRealm];
    RLMResults *results = [self getUserWithUserId:userId];
    [realm beginWriteTransaction];
    [realm deleteObject:(RLMUser *)results];
    [realm commitWriteTransaction];
}

@end
