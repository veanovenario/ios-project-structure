//
//  VEALoginViewController.m
//  iOS Project Structure
//
//  Created by Vea Novenario on 25/11/2016.
//  Copyright © 2016 Vea Novenario. All rights reserved.
//

#import "VEALoginViewController.h"
// Models
#import "VEAUser.h"

@interface VEALoginViewController ()

@end

@implementation VEALoginViewController

- (void)viewDidLoad {
    [super viewDidLoad];
}

#pragma mark - APIs

-(void)apiLogin{
    
    VEAUser *userObj = [[VEAUser alloc] init];
    userObj.email = @"sample@email.com";
    userObj.password =  @"samplepassword";
    
    [apiConnection loginWithUser:userObj completion:^(VEAAPIResult *resultObj){
        
        if (resultObj.isSuccess) {
            
            // Save user to the database
            VEAUser *userObj = [[VEAUser alloc] initWithDictionary:resultObj.resultDict error:nil];
            
            DLog(@"User: %@",userObj);
            
        }else{
            
            // Show an alert message
            DLog(@"Error: %@",resultObj.message);
        }
        [SVProgressHUD dismiss];
    }];
}

#pragma mark - Buttons

-(IBAction)loginButtonPressed:(id)sender{
    [self apiLogin];
}

@end
