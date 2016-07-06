//
//  AppDelegate.m
//  Demo
//
//  Created by Rex Sheng on 6/29/16.
//  Copyright © 2016 InteractiveLabs. All rights reserved.
//

#import "AppDelegate.h"
@import XealthSDK;

@interface AppDelegate() <XealthCardsViewControllerDelegate>

@end

@implementation AppDelegate

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{
  self.window = [[UIWindow alloc] initWithFrame:[UIScreen mainScreen].bounds];
  XealthCardsViewController *rootViewController = [XealthCardsViewController new];
  rootViewController.delegate = self;
  UINavigationController *nav = [[UINavigationController alloc] initWithRootViewController:rootViewController];
  nav.navigationBarHidden = YES;
  [rootViewController loginWithUserName:@"sundarteset" password:@"Test1234!!"];
  self.window.rootViewController = nav;
  [self.window makeKeyAndVisible];
  return YES;
}

- (void)cardView:(XealthCardsViewController *)controller loginResult:(BOOL)success error:(NSError *__autoreleasing *)error
{

}

- (void)cardView:(XealthCardsViewController *)controller logoutResult:(BOOL)success error:(NSError *__autoreleasing *)error
{

}

- (void)cardView:(XealthCardsViewController *)controller pushCard:(UIViewController *)card;
{
  [controller.navigationController pushViewController:card animated:YES];
}

@end
