//
//  WebDetailViewController.m
//  JJSAssignement4.7
//
//  Created by jsanto on 3/16/15.
//  Copyright (c) 2015 Jason Santo. All rights reserved.
//
#import "ArrayHolder.h"
#import "WebDetailViewController.h"
#import "WebSite.h"


@interface WebDetailViewController ()

@end

@implementation WebDetailViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    
    
    NSURL *url = [NSURL URLWithString:_URL];
    NSURLRequest *requestObj = [NSURLRequest requestWithURL:url];
    [_Display loadRequest:requestObj];
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
