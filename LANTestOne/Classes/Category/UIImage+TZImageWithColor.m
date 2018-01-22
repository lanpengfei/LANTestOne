//
//  UIImage+TZImageWithColor.m
//  CustomerService
//
//  Created by 天智 on 16/7/4.
//  Copyright © 2016年 天智. All rights reserved.
//

#import "UIImage+TZImageWithColor.h"

@implementation UIImage (TZImageWithColor)
+ (UIImage *)imageWithColor:(UIColor *)color
{
    CGRect rect = CGRectMake(0, 0, 1, 1);
    // Create a 1 by 1 pixel context
    UIGraphicsBeginImageContextWithOptions(rect.size, NO, 0);
    [color setFill];
    UIRectFill(rect);   // Fill it with your color
    UIImage *image = UIGraphicsGetImageFromCurrentImageContext();
    UIGraphicsEndImageContext();
    return image;
}
@end
