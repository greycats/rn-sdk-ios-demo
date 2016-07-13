/**
 * Copyright (c) 2015-present, Facebook, Inc.
 * All rights reserved.
 *
 * This source code is licensed under the BSD-style license found in the
 * LICENSE file in the root directory of this source tree. An additional grant
 * of patent rights can be found in the PATENTS file in the same directory.
 */

#import "AppDelegate.h"
@import XealthSDK;

#define TEST_PATITENT_ID @"Z4153431"
#define XEALTH_APK_KEY @"4EAB5FCA684C4C2F8944F4CBDDAC37F1"
#define XEALTH_APK_SECRET @"7r8gj4TcVDLG2BvTiaIxP7IlcdvuSvsN3by7dGqJjYE="

@interface LoginViewController: UIViewController <XealthCardsViewControllerDelegate>
@end

@implementation LoginViewController

- (IBAction)logIn:(id)sender
{
	[self performSegueWithIdentifier:@"showCards" sender:nil];
}

- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
	XealthCardsViewController *controller = (XealthCardsViewController *)segue.destinationViewController;
  NSLog(@"%@", controller);
	[controller loginWithUserName:@"sundarteset" password:@"Test1234!!"];
//  [XealthCardsViewController setSDKKey:XEALTH_APK_KEY secret:XEALTH_APK_SECRET];
//  [controller loginWithPatientId:TEST_PATITENT_ID type:PATIENT_ID_TYPE_EXTERNAL];
  controller.delegate = self;
}

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{
	return YES;
}

- (void)cardView:(XealthCardsViewController *)controller loginResult:(BOOL)success error:(NSError *__autoreleasing *)error
{

}

- (void)cardView:(XealthCardsViewController *)controller logoutResult:(BOOL)success error:(NSError *__autoreleasing *)error
{
  [controller.navigationController popToViewController:self animated:YES];
}

- (void)cardView:(XealthCardsViewController *)controller pushCard:(UIViewController *)card;
{
	[controller.navigationController pushViewController:card animated:YES];
}

@end

@implementation AppDelegate

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{
	return YES;
}

@end
