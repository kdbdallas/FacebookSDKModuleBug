//
//  ViewController.m
//  FacebookBug
//
//  Created by Dallas Brown on 7/27/15.
//  Copyright (c) 2015 Likey. All rights reserved.
//

#import "ViewController.h"
#import <FBSDKCoreKit/FBSDKCoreKit.h>

@interface ViewController ()
{
	FBSDKLoginButton *facebookLoginButton;
}
@end

@implementation ViewController

- (void)viewDidLoad {
	[super viewDidLoad];

	// Login with Facebook
	if ([FBSDKAccessToken currentAccessToken])
	{
		// Already logged in. Do something else
		NSLog(@"Already logged in");
		
		return;
	}
	
	facebookLoginButton = [[FBSDKLoginButton alloc] init];
	facebookLoginButton.readPermissions = @[@"public_profile", @"email"];
	facebookLoginButton.delegate = self;
	[facebookLoginButton setFrame:CGRectMake(20, 200, 280, 40)];
	
	[self.view addSubview:facebookLoginButton];
}

#pragma mark - FBSDKLoginButton Delegate

- (void)loginButtonDidLogOut:(FBSDKLoginButton *)loginButton
{
	
}

- (void)loginButton:(FBSDKLoginButton *)loginButton didCompleteWithResult:(FBSDKLoginManagerLoginResult *)result error:(NSError *)error
{
	NSLog(@"Completed");
}

#pragma mark -

- (void)didReceiveMemoryWarning {
	[super didReceiveMemoryWarning];
	// Dispose of any resources that can be recreated.
}

@end
