//
//  UILabel+TZ.m
//  CustomerService
//
//  Created by 天智 on 16/7/5.
//  Copyright © 2016年 天智. All rights reserved.
//

#import "UILabel+TZ.h"

@implementation UILabel (TZ)

+ (UILabel *)labelWithText:(NSString *)text textColor:(UIColor *)textColor font:(UIFont *)font textAlignment:(NSTextAlignment)textAlignment {
    UILabel *label = [[UILabel alloc]init];
    label.text = text;
    label.textColor = textColor;
    label.font = font;
    label.textAlignment = textAlignment;
    return label;
}
@end
