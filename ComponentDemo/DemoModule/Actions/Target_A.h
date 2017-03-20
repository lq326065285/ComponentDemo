//
//  Target_A.h
//  ComponentDemo
//
//  Created by 李强 on 2017/3/15.
//  Copyright © 2017年 李强. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Target_A : NSObject

-(id)Action_SecondViewControllerWithParams:(NSDictionary *)params;

-(void)Action_URLViewControllerWithParams:(NSDictionary *)params;

-(void)Action_PresentViewControllerWithParams:(NSDictionary *)params;
@end
