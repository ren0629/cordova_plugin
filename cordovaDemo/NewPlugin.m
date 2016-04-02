//
//  NewPlugin.m
//  cordovaDemo
//
//  Created by 任和 on 16/3/31.
//  Copyright © 2016年 任和. All rights reserved.
//

#import "NewPlugin.h"
#import "ViewController.h"
#import "CordovaController.h"

@implementation NewPlugin

- (void)operationByJS:(CDVInvokedUrlCommand *)result{
    
    UIAlertController * alert = [UIAlertController alertControllerWithTitle:@"提醒" message:@"数据已get，点击确定返回" preferredStyle:UIAlertControllerStyleAlert];
    
    UIAlertAction * ac1 = [UIAlertAction actionWithTitle:@"确定" style:UIAlertActionStyleDefault handler:^(UIAlertAction * _Nonnull action) {
        UIViewController * vc = self.viewController.presentingViewController;
        if ([vc isMemberOfClass:[ViewController class]] && [self.viewController isMemberOfClass:[CordovaController class]]) {
            ((CordovaController *)self.viewController).complete(result.arguments);
            [self.viewController dismissViewControllerAnimated:YES completion:nil];
        }
    }];
    [alert addAction:ac1];
    [self.viewController presentViewController:alert animated:YES completion:nil];
    
//    CDVPluginResult* pluginResult = nil;
//
//    pluginResult = [CDVPluginResult resultWithStatus:CDVCommandStatus_OK messageAsString:@"hello"];
//    [self.commandDelegate sendPluginResult:pluginResult callbackId:result.callbackId];
}

@end
