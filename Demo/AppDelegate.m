//
//  AppDelegate.m
//  Demo
//
//  Created by Rex Sheng on 6/29/16.
//  Copyright © 2016 InteractiveLabs. All rights reserved.
//

#import "AppDelegate.h"
@import XealthSDK;

@implementation AppDelegate

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{
  self.window = [[UIWindow alloc] initWithFrame:[UIScreen mainScreen].bounds];
  XealthCardsViewController *rootViewController = [XealthCardsViewController new];
	[rootViewController loginWithUserName:@"rex" password:@"abcd"];
  self.window.rootViewController = rootViewController;
  [self.window makeKeyAndVisible];
  return YES;
}

@end
