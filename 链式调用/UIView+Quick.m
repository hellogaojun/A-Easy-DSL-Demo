//
//  UIView+Quick.m
//  链式调用
//
//  Created by gaojun on 2018/11/30.
//  Copyright © 2018年 gaojun. All rights reserved.
//

#import "UIView+Quick.h"
#import <objc/runtime.h>

const void * key;

typedef void (^tapBlcok)(void);

@implementation UIView (Quick)
- (UIView * (^)(CGFloat, CGFloat))position {
    return ^UIView * (CGFloat x, CGFloat y) {
        CGRect frame = self.frame;
        frame.origin.x = x;
        frame.origin.y = y;
        self.frame = frame;
        return self;
    };
}

- (UIView * _Nonnull (^)(CGFloat, CGFloat))size {
    return ^UIView * (CGFloat w,CGFloat h) {
        CGRect frame = self.frame;
        frame.size.width = w;
        frame.size.height = h;
        self.frame = frame;
        return self;
    };
}

- (UIView * _Nonnull (^)(UIColor * _Nonnull))bgColor {
    return ^UIView * (UIColor * color) {
        self.backgroundColor = color;
        return self;
    };
}

- (UIView * _Nonnull (^)(CGFloat, CGFloat))center {
    return ^UIView * (CGFloat centerX, CGFloat centerY) {
        self.center = CGPointMake(centerX, centerY);
        return self;
    };
}

- (UIView * _Nonnull (^)(UIView * _Nonnull))intoView {
    return ^UIView * (UIView *superView) {
        [superView addSubview:self];
        return self;
    };
}



@end
