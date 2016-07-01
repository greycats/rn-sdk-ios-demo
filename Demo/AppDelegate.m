//
//  AppDelegate.m
//  Demo
//
//  Created by Rex Sheng on 6/29/16.
//  Copyright © 2016 InteractiveLabs. All rights reserved.
//

#import "AppDelegate.h"
@import Xealth;

@implementation AppDelegate

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{
  self.window = [[UIWindow alloc] initWithFrame:[UIScreen mainScreen].bounds];
  UIViewController *rootViewController = [UIViewController new];
	rootViewController.view = [[XealthView alloc] initWithProperties:nil];
  self.window.rootViewController = rootViewController;
  [self.window makeKeyAndVisible];
  return YES;
}

@end
