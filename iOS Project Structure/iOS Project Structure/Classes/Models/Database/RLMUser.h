//
//  RLMUser.h
//  iOS Project Structure
//
//  Created by Vea Novenario on 28/11/2016.
//  Copyright © 2016 Vea Novenario. All rights reserved.
//

#import <Realm/Realm.h>
// Models
#import "VEAUser.h"

@interface RLMUser : RLMObject

@property int userId;
@property NSString *name;
@property NSString *email;
@property NSString *countryCode;

-(instancetype)initWithUser:(VEAUser *)userObj;
-(void)updateWithUser:(VEAUser *)userObj;

@end
