//
//  CTMediator+A.m
//  ComponentDemo
//
//  Created by 李强 on 2017/3/15.
//  Copyright © 2017年 李强. All rights reserved.
//

#import "CTMediator+A.h"

@implementation CTMediator (A)

-(UIViewController *)CTMediator_viewControllerWithContent:(NSString *)content callBack:(void(^)(NSString *title))callBack{
    NSDictionary * dict = @{
                            @"content":content,
                            @"completionHandle":callBack
                            };
    
    return [self performTarget:@"A" action:@"SecondViewController" params:dict shouldCacheTarget:NO];
}

-(void)CTMediator_PresentViewControllerWithContent:(NSString *)content{
    [self performTarget:@"A" action:@"PresentViewController" params:@{@"content":content} shouldCacheTarget:NO];
}

@end
