//
//  UIView+Frame.m
//  CustomerService
//
//  Created by 天智 on 16/6/29.
//  Copyright © 2016年 天智. All rights reserved.
//

#import "UIView+Frame.h"

@implementation UIView (Frame)
- (void)setX:(CGFloat)x {
    self.frame = CGRectMake(x, self.frame.origin.y, self.frame.size.width, self.frame.size.height);
}
- (CGFloat)x {
    return self.frame.origin.x;
}
- (void)setY:(CGFloat)y {
    self.frame = CGRectMake(self.frame.origin.x, y, self.frame.size.width, self.frame.size.height);
}
- (CGFloat)y {
    return self.frame.origin.y;
}
- (void)setTop:(CGFloat)top {
    self.y = top;
}
- (CGFloat)top {
    return self.frame.origin.y;
}
- (void)setBottom:(CGFloat)bottom {
    self.y = bottom - self.height;
}
- (CGFloat)bottom {
    return self.y + self.height;
}
- (void)setLeft:(CGFloat)left {
    self.x = left;
}
- (CGFloat)left {
    return self.x;
}
- (void)setRight:(CGFloat)right {
    self.x = right - self.width;
}
- (CGFloat)right {
    return self.x + self.width;
}
- (void)setHeight:(CGFloat)height {
    self.frame = CGRectMake(self.frame.origin.x, self.frame.origin.y, self.frame.size.width, height);;
}
- (CGFloat)height {
    return self.frame.size.height;
}
- (void)setWidth:(CGFloat)width {
    self.frame = CGRectMake(self.frame.origin.x, self.frame.origin.y, width, self.frame.size.height);;
}
- (CGFloat)width {
    return self.frame.size.width;
}
- (void)setCenterX:(CGFloat)centerX {
    self.center = CGPointMake(centerX, self.center.y);
}
- (CGFloat)centerX {
    return self.center.x;
}
- (void)setCenterY:(CGFloat)centerY {
    self.center = CGPointMake(self.center.x, centerY);
}
- (CGFloat)centerY {
    return self.center.y;
}
@end
