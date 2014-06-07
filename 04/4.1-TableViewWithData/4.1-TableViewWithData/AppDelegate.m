//
//  AppDelegate.m
//  4.1-TableViewWithData
//
//  Created by Roy Stanfield on 6/7/14.
//  Copyright (c) 2014 Roy Stanfield. All rights reserved.
//

#import "AppDelegate.h"
#import "ATableViewController.h"

@implementation AppDelegate

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{
    self.window = [[UIWindow alloc] initWithFrame:[[UIScreen mainScreen] bounds]];
    // Override point for customization after application launch.
    
    
    ATableViewController *myTableViewController = [[ATableViewController alloc] init];
    self.window.rootViewController = myTableViewController;
    
    self.window.backgroundColor = [UIColor whiteColor];
    [self.window makeKeyAndVisible];
    return YES;
}

@end
