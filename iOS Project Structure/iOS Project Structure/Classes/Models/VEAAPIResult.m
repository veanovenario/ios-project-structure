//
//  VEAAPIResult.m
//  iOS Project Structure
//
//  Created by Vea Novenario on 25/11/2016.
//  Copyright © 2016 Vea Novenario. All rights reserved.
//

#import "VEAAPIResult.h"

@implementation VEAAPIResult

+(BOOL)propertyIsOptional:(NSString*)propertyName{
    return YES;
}

+(JSONKeyMapper*)keyMapper{
    return [JSONKeyMapper mapperForSnakeCase];
}

@end
