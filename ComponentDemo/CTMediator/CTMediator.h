//
//  CTModiator.h
//  ComponentDemo
//
//  Created by 李强 on 2017/3/14.
//  Copyright © 2017年 李强. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface CTMediator : NSObject

+(instancetype)sharedInstance;

-(id)performActionWithUrl:(NSURL *)url comletion:(void(^)(NSDictionary *))completion;

-(id)performTarget:(NSString *)targetName action:(NSString *)actionName params:(NSDictionary *)params shouldCacheTarget:(BOOL)shouldCacheTarget;

@end
