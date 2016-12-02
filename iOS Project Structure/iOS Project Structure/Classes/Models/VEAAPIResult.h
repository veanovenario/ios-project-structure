//
//  VEAAPIResult.h
//  iOS Project Structure
//
//  Created by Vea Novenario on 25/11/2016.
//  Copyright © 2016 Vea Novenario. All rights reserved.
//

#import <Foundation/Foundation.h>
// Libraries
#import "JSONModel.h"

@interface VEAAPIResult : JSONModel

// API
@property (nonatomic, readwrite) BOOL isSuccess;
@property (nonatomic, strong) NSString *message;
@property (nonatomic, strong) NSDictionary *resultDict;

@end
