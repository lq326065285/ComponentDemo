//
//  Target_A.m
//  ComponentDemo
//
//  Created by 李强 on 2017/3/15.
//  Copyright © 2017年 李强. All rights reserved.
//

#import "Target_A.h"
#import "SecondViewController.h"
#import "URLViewController.h"
@implementation Target_A

-(id)Action_SecondViewControllerWithParams:(NSDictionary *)params{
    SecondViewController * secondVC = [[SecondViewController alloc] init];
    secondVC.content = params[@"content"];
    secondVC.SetTitleCallBack = params[@"completionHandle"];
    return secondVC;
}

-(void)Action_URLViewControllerWithParams:(NSDictionary *)params{
    URLViewController * urlVC = [[URLViewController alloc] init];
    urlVC.title = params[@"content"];
    UINavigationController * n = (UINavigationController *)[[UIApplication sharedApplication] keyWindow].rootViewController;
    [n pushViewController:urlVC animated:YES];
}

-(void)Action_PresentViewControllerWithParams:(NSDictionary *)params{
    SecondViewController * secondVC = [[SecondViewController alloc] init];
    secondVC.content = params[@"content"];
    [[UIApplication sharedApplication].keyWindow.rootViewController presentViewController:secondVC animated:YES completion:nil];
}

@end
