//
//  CordovaController.m
//  cordovaDemo
//
//  Created by 任和 on 16/3/31.
//  Copyright © 2016年 任和. All rights reserved.
//

#import "CordovaController.h"

@interface CordovaController ()

@end

@implementation CordovaController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.wwwFolderName = @"www";
    self.startPage = @"index.html";
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
