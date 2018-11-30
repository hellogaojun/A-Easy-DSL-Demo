//
//  UIView+Quick.h
//  链式调用
//
//  Created by gaojun on 2018/11/30.
//  Copyright © 2018年 gaojun. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN
///快速设置(点语法)
@interface UIView (Quick)
@property (nonatomic, readonly) UIView * (^position)(CGFloat x, CGFloat y);
@property (nonatomic, readonly) UIView * (^size)(CGFloat width, CGFloat height);
@property (nonatomic, readonly) UIView * (^bgColor)(UIColor *color);
@property (nonatomic, readonly) UIView * (^center)(CGFloat centerX, CGFloat centerY);
@property (nonatomic, readonly) UIView * (^intoView)(UIView *superView);

@end

NS_ASSUME_NONNULL_END
