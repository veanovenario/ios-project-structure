//
//  RLMUser.m
//  iOS Project Structure
//
//  Created by Vea Novenario on 28/11/2016.
//  Copyright © 2016 Vea Novenario. All rights reserved.
//

#import "RLMUser.h"

@implementation RLMUser

+ (NSString *)primaryKey {
    return @"userId";
}

+ (NSArray *)indexedProperties {
    return @[@"userId"];
}

-(instancetype)initWithUser:(VEAUser *)userObj{
    if(self = [super init]){
        self.userId = userObj.userId;
        self.name = userObj.name;
        self.email = userObj.email;
        self.countryCode = userObj.countryCode;
    }
    return self;
}

-(void)updateWithUser:(VEAUser *)userObj{
    self.name = userObj.name;
    self.email = userObj.email;
    self.countryCode = userObj.countryCode;
}

@end
