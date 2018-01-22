//
//  NSObject+Log.m
//  CASICloud
//
//  Created by 天智 on 2016/12/5.
//  Copyright © 2016年 天智. All rights reserved.
//

#import "NSObject+Log.h"

@implementation NSObject (Log)
// 自动打印属性字符串
+ (void)resolveDict:(NSDictionary *)dict{
    
    // 拼接属性字符串代码
    NSMutableString *strM = [NSMutableString string];
    
    // 1.遍历字典，把字典中的所有key取出来，生成对应的属性代码
    [dict enumerateKeysAndObjectsUsingBlock:^(id  _Nonnull key, id  _Nonnull obj, BOOL * _Nonnull stop) {
        
        // 类型经常变，抽出来
        NSString *type;
        
        if ([obj isKindOfClass:NSClassFromString(@"__NSCFString")] || [obj isKindOfClass:NSClassFromString(@"NSTaggedPointerString")]) {
            type = @"NSString";
        }else if ([obj isKindOfClass:NSClassFromString(@"__NSCFArray")] || [obj isKindOfClass:NSClassFromString(@"__NSSingleObjectArrayI")]){
            type = @"NSArray";
        }else if ([obj isKindOfClass:NSClassFromString(@"__NSCFNumber")]){
            type = @"NSInteger";
        }else if ([obj isKindOfClass:NSClassFromString(@"__NSCFDictionary")]){
            type = @"NSDictionary";
        }else if ([obj isKindOfClass:NSClassFromString(@"__NSCFBoolean")]){
            type = @"BOOL";
        }
        
        
        // 属性字符串
        NSString *str;
        if ([type isEqualToString:@"NSString"]) {
            str = [NSString stringWithFormat:@"@property (nonatomic, copy) %@ * %@;",type,key];
            
        }else if ([type isEqualToString:@"NSArray"] || [type isEqualToString:@"NSDictionary"]) {
            str = [NSString stringWithFormat:@"@property (nonatomic, strong) %@ * %@;",type,key];
            
        }else{
            str = [NSString stringWithFormat:@"@property (nonatomic, assign) %@  %@;",type,key];
        }
        
        // 每生成属性字符串，就自动换行。
        [strM appendFormat:@"\n%@\n",str];
        
    }];
    
    // 把拼接好的字符串打印出来，就好了。
    NSLog(@"%@",strM);
    
}

@end
