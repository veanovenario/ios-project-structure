//
//  VEABaseViewController.m
//  iOS Project Structure
//
//  Created by Vea Novenario on 25/11/2016.
//  Copyright © 2016 Vea Novenario. All rights reserved.
//

#import "VEABaseViewController.h"

@interface VEABaseViewController ()

@end

@implementation VEABaseViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    // Init
    apiConnection = [[VEAAPIHelper alloc] init];
    globalVariables = [VEAGlobalVariables sharedInstance];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    
    DLog(@"Low Memory Warning at %@", self.class);
}

@end
