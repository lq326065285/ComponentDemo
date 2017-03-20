//
//  SecondViewController.h
//  ComponentDemo
//
//  Created by 李强 on 2017/3/15.
//  Copyright © 2017年 李强. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface SecondViewController : UIViewController

@property (nonatomic,copy) void(^SetTitleCallBack)(NSString * title);

@property (nonatomic,copy) NSString * content;

@end
