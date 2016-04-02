//
//  CordovaController.h
//  cordovaDemo
//
//  Created by 任和 on 16/3/31.
//  Copyright © 2016年 任和. All rights reserved.
//

#import <Cordova/CDVViewController.h>

typedef void(^ReceiveData)(NSArray * data);
@interface CordovaController : CDVViewController

@property (nonatomic,copy)ReceiveData complete;

@end
