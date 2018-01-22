//
//  NSDictionary+TZ.m
//  CustomerService
//
//  Created by 天智 on 16/7/4.
//  Copyright © 2016年 天智. All rights reserved.
//

#import "NSDictionary+TZ.h"

@implementation NSDictionary (TZ)
- (id)getValueFromKey:(NSString *)key {
    
    id value = [self objectForKey:key];
    if ([value isKindOfClass:[NSNull class]]) {
        return nil;
    }
    if ([value isKindOfClass:[NSString class]]) {
        NSRange range = [value rangeOfString:@"null"];
        if (range.length > 0) {
            value = @"";
        }
    }
    return value;
}
@end
