//
//  ViewMaker.m
//  链式调用
//
//  Created by gaojun on 2018/10/27.
//  Copyright © 2018年 gaojun. All rights reserved.
//

#import "ViewMaker.h"

@interface ViewMaker ()
@property (nonatomic, assign) CGPoint pos;
@property (nonatomic, assign) CGPoint bound;
@property (nonatomic, strong) UIColor *color;
@property (nonatomic, strong) Class viewClass;

@end

@implementation ViewMaker

ViewMaker * _alloc_a(Class aClass) {
    ViewMaker *maker = ViewMaker.new;
    maker.viewClass = aClass;
    return maker;
}

- (instancetype)init {
    if (self = [super init]) {
      
    }
    return self;
}

- (ViewMaker * _Nonnull (^)(CGFloat, CGFloat))position {
    return ^ViewMaker * (CGFloat x, CGFloat y) {
        self.pos = CGPointMake(x, y);
        return self;
    };
}

- (ViewMaker * _Nonnull (^)(CGFloat, CGFloat))size {
    return ^ViewMaker * (CGFloat width,CGFloat height) {
        self.bound = CGPointMake(width, height);
        return self;
    };
}

- (ViewMaker * _Nonnull (^)(UIColor * _Nonnull))bgColor {
    return ^ViewMaker * (UIColor *color) {
        self.color = color;
        return self;
    };
}

- (UIView * _Nonnull (^)(UIView * _Nonnull))intoView {
    return ^UIView * (UIView *superView) {
        CGRect rect = CGRectMake(self.pos.x, self.pos.y, self.bound.x, self.bound.y);
        UIView *view = [[self.viewClass alloc] init];
        [view setFrame:rect];
        view.backgroundColor = self.color;
        [superView addSubview:view];
        return view;
    };
}

- (ViewMaker *)with {
    return self;
}

- (void)dealloc {
    NSLog(@"%s",__func__);
}

@end
