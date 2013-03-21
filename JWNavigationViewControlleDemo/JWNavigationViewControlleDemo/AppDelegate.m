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
    
    //should works in  a parentContrller 
    TestAViewController *testA = [[[TestAViewController alloc] init] autorelease];
    
    self.window = [[UIWindow alloc] initWithFrame:[[UIScreen mainScreen] bounds]];
    UITabBarController *tabbarCtrl = [[UITabBarController alloc] init];
    tabbarCtrl.viewControllers = [NSArray arrayWithObject:testA];
    
    JWNavigationViewController *nav = [[[JWNavigationViewController alloc] initWithRootViewController:tabbarCtrl] autorelease];
    self.window.rootViewController = nav;
    [self.window makeKeyAndVisible];
    
    return YES;
}

@end
