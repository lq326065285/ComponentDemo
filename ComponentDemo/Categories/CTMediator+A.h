//
//  CTMediator+A.h
//  ComponentDemo
//
//  Created by 李强 on 2017/3/15.
//  Copyright © 2017年 李强. All rights reserved.
//

#import "CTMediator.h"
#import <UIKit/UIKit.h>
@interface CTMediator (A)

-(UIViewController *)CTMediator_viewControllerWithContent:(NSString *)content callBack:(void(^)(NSString *title))callBack;
-(void)CTMediator_PresentViewControllerWithContent:(NSString *)content;
@end
