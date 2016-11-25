//
//  VEAUser.h
//  iOS Project Structure
//
//  Created by Vea Novenario on 25/11/2016.
//  Copyright © 2016 Vea Novenario. All rights reserved.
//

#import <Foundation/Foundation.h>
// Libraries
#import "JSONModel.h"

@interface VEAUser : JSONModel

// API
@property (nonatomic, readwrite) int userId;
@property (nonatomic, strong) NSString *name;
@property (nonatomic, strong) NSString *email;
@property (nonatomic, strong) NSString *countryCode;

// Others
@property (nonatomic, strong) NSString *password;

@end
