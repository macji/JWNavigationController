//
//  TestAViewController.m
//  JWNavigationViewControlleDemo
//
//  Created by Jason Wong on 13-2-26.
//  Copyright (c) 2013年 iHu.im. All rights reserved.
//

#import "TestAViewController.h"
#import "TestBViewController.h"

@implementation TestAViewController

- (void)loadView {
    [super loadView];
    
    self.title = @"TestA";
    self.view.backgroundColor = [UIColor whiteColor];
    UIButton *pushButton = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    pushButton.frame = CGRectMake(100, 100, 100, 100);
    [pushButton setTitle:@"Push" forState:UIControlStateNormal];
    [pushButton addTarget:self action:@selector(pushAction) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:pushButton];
}

- (void)pushAction {
    TestBViewController *testB = [[TestBViewController alloc] init];
    [self.navigationController pushViewController:testB animated:YES];
    [testB release];
}

@end
