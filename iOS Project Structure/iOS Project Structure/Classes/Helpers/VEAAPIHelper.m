//
//  VEAAPIHelper.m
//  iOS Project Structure
//
//  Created by Vea Novenario on 25/11/2016.
//  Copyright © 2016 Vea Novenario. All rights reserved.
//

#import "VEAAPIHelper.h"

@implementation VEAAPIHelper

-(id)init{
    self = [super init];
    if (self) {
        
        // Init AFHTTPSessionManager
        self.manager = [[AFHTTPSessionManager alloc] initWithBaseURL:[NSURL URLWithString:kAPIBaseURL]];
        self.manager.requestSerializer.cachePolicy = NSURLRequestReloadIgnoringLocalCacheData;
        [self.manager.requestSerializer setValue:kAPIKey forHTTPHeaderField:@"X-API-KEY"];
    }
    return self;
}

#pragma mark - User

-(void)loginWithUser:(VEAUser *)userObj completion:(CompletionBlock)block{
    
    NSString *apiName = @"login";
    
    //TODO: Pass the device token
    
    NSDictionary *parameter = @{@"email":[VEAUtils showEmptyIfNull:userObj.email],
                                @"password":[VEAUtils showEmptyIfNull:userObj.password],
                                @"device_token": @"",
                                @"device_type":kDeviceOS,
                                @"app_version":kAppVersion,
                                @"os_version":kOSVersion
                                };
    
    DLog(@"[ URL ] %@%@", self.manager.baseURL,apiName);
    DLog(@"[ Param ] %@", parameter)
    
    VEAAPIResult *apiResult = [[VEAAPIResult alloc] init];
    [SVProgressHUD show];
    
//    [self.manager POST:apiName parameters:parameter progress:^(NSProgress *uploadProgress){
//    } success:^(NSURLSessionDataTask * __unused task, id json) {
//        DLog(@"[ JSON ] %@", json);
//        
//        apiResult.isSuccess = [[json objectForKey:@"status"] boolValue];
//        apiResult.message = [json objectForKey:@"message"];
//        apiResult.resultDict = [json objectForKey:@"data"];
//        [SVProgressHUD dismiss];
//        
//        block(apiResult);
//    } failure:^(NSURLSessionDataTask *__unused task, NSError *error) {
//        DLog(@"[ Error ] %@", error);
//        
//        apiResult.isSuccess = NO;
//        apiResult.message = NSLocalizedString(@"Alert_ServerError",nil);
//        [SVProgressHUD dismiss];
//        
//        block(apiResult);
//    }];
    
    //TODO: Uncomment the codes above and remove the codes below to connect to the server
    
    //--- Start testing local JSON
    NSString *filePath = [[NSBundle mainBundle] pathForResource:@"SampleLogin" ofType:@"json"];
    NSData *data = [NSData dataWithContentsOfFile:filePath];
    NSDictionary *json = [NSJSONSerialization JSONObjectWithData:data options:kNilOptions error:nil];
    apiResult.isSuccess = [[json objectForKey:@"status"] boolValue];
    apiResult.message = [json objectForKey:@"message"];
    apiResult.resultDict = [json objectForKey:@"data"];
    [SVProgressHUD dismiss];
    DLog(@"[ SAMPLE DATA ] %@", apiResult);
    //--- End testing local JSON
    
    block(apiResult);
}

@end
