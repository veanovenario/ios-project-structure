//
//  VEABaseViewController.h
//  iOS Project Structure
//
//  Created by Vea Novenario on 25/11/2016.
//  Copyright © 2016 Vea Novenario. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface VEABaseViewController : UIViewController{
    VEAAPIHelper *apiConnection;
    VEAGlobalVariables *globalVariables;
}

@end
