//
//  ViewController.h
//  FacebookBug
//
//  Created by Dallas Brown on 7/27/15.
//  Copyright (c) 2015 Likey. All rights reserved.
//

@import UIKit;
#import <FBSDKLoginKit/FBSDKLoginKit.h>

@interface ViewController : UIViewController <FBSDKLoginButtonDelegate>


- (void)loginButtonDidLogOut:(FBSDKLoginButton *)loginButton;
- (void)loginButton:(FBSDKLoginButton *)loginButton didCompleteWithResult:(FBSDKLoginManagerLoginResult *)result error:(NSError *)error;

@end

