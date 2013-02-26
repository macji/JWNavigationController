//
//  TestBViewController.m
//  JWNavigationViewControlleDemo
//
//  Created by Jason Wong on 13-2-26.
//  Copyright (c) 2013年 iHu.im. All rights reserved.
//

#import "TestBViewController.h"
#import "TestAViewController.h"

@implementation TestBViewController

- (void)loadView {
    [super loadView];
    
    self.title = @"TestB";
    self.view.backgroundColor = [UIColor blueColor];
    UIButton *pushButton = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    pushButton.frame = CGRectMake(100, 100, 100, 100);
    [pushButton setTitle:@"Push A" forState:UIControlStateNormal];
    [pushButton addTarget:self action:@selector(pushAction) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:pushButton];
    
    UIButton *popButton = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    popButton.frame = CGRectMake(100, 220, 100, 100);
    [popButton setTitle:@"Back" forState:UIControlStateNormal];
    [popButton addTarget:self action:@selector(popAction) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:popButton];
}

- (void)pushAction {
    TestAViewController *testA = [[TestAViewController alloc] init];
    [self.navigationController pushViewController:testA animated:YES];
    [testA release];
}

- (void)popAction {
    [self.navigationController popViewControllerAnimated:YES];
}

@end
