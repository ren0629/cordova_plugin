//
//  ViewController.m
//  cordovaDemo
//
//  Created by 任和 on 16/3/31.
//  Copyright © 2016年 任和. All rights reserved.
//

#import "ViewController.h"
#import "CordovaController.h"

@interface ViewController (){
    UIView * _resultView;
    CGRect _windowRect;
}

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.view.backgroundColor = [UIColor whiteColor];
    _windowRect = [UIScreen mainScreen].bounds;
    [self createPresentBtn];
    
}

- (void)createPresentBtn{
    //点击按钮
    UIButton * presentBtn = [[UIButton alloc]initWithFrame:CGRectMake(100, 100, _windowRect.size.width - 200, 100)];
    presentBtn.backgroundColor = [UIColor lightGrayColor];
    [self.view addSubview:presentBtn];
    [presentBtn setTitle:@"点我跳转到Cordova" forState:UIControlStateNormal];
    [presentBtn addTarget:self action:@selector(present) forControlEvents:64];
    //显示结果view
    _resultView = [[UIView alloc]initWithFrame:CGRectMake(100, 250, _windowRect.size.width - 200, 200)];
    _resultView.backgroundColor = [UIColor lightGrayColor];
    [self.view addSubview:_resultView];
    
}

- (void)present{
    CordovaController * CDVC = [[CordovaController alloc]init];
    //用来处理JS的返回值
    CDVC.complete = ^(NSArray *data) {
        if (data.count > 0) {
            while (_resultView.subviews.count) {
                UIView * child = _resultView.subviews.lastObject;
                [child removeFromSuperview];
            }
            for (int i = 0; i < data.count; i++) {
                UILabel * label = [[UILabel alloc]initWithFrame:CGRectMake(15, i * 50, CGRectGetWidth(_resultView.frame) - 30, 50)];
                label.text = data[i];
                label.textColor = [UIColor whiteColor];
                label.font = [UIFont systemFontOfSize:15];
                [_resultView addSubview:label];
            }
        }
    };
    [self presentViewController:CDVC animated:YES completion:nil];
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
