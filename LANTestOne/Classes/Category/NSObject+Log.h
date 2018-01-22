//
//  NSObject+Log.h
//  CASICloud
//
//  Created by 天智 on 2016/12/5.
//  Copyright © 2016年 天智. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NSObject (Log)

// 自动打印属性字符串
+ (void)resolveDict:(NSDictionary *)dict;
@end
