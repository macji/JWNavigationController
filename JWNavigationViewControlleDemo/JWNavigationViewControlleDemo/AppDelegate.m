//
//  AppDelegate.m
//  JWNavigationViewControlleDemo
//
//  Created by Jason Wong on 13-2-26.
//  Copyright (c) 2013年 iHu.im. All rights reserved.
//

#import "AppDelegate.h"
#import "JWNavigationViewController.h"
#import "TestAViewController.h"
#import "TestBViewController.h"

@implementation AppDelegate

- (void)dealloc
{
    [_window release];
    [super dealloc];
}

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{    
    TestAViewController *testA = [[TestAViewController alloc] init];
    JWNavigationViewController *nav = [[[JWNavigationViewController alloc] initWithRootViewController:testA] autorelease];
    [testA release];
    
    self.window = [[UIWindow alloc] initWithFrame:[[UIScreen mainScreen] bounds]];
    self.window.rootViewController = nav;
    [self.window makeKeyAndVisible];
    
    return YES;
}

@end
