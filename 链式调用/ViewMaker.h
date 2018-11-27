//
//  ViewMaker.h
//  链式调用
//
//  Created by gaojun on 2018/10/27.
//  Copyright © 2018年 gaojun. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

//How to write a DSL with Objective-C,Please refer to https://mp.weixin.qq.com/s?__biz=MjM5NTIyNTUyMQ==&mid=2709545309&idx=1&sn=28fb5460c515f7886adc4ad5e527b723&chksm=828f0b83b5f88295f962db5643b82c863b80de5c2b50593a416d5d388978d4d77ac42d12bab4&mpshare=1&scene=23&srcid=0809M05m48t6tEWq2gkXvs1q#rd


#define AllocA(aClass) _alloc_a([aClass class])

NS_ASSUME_NONNULL_BEGIN

///中间类(保存信息)~~~实现链式调用DSL(Domain Specific Language)
@interface ViewMaker : NSObject
@property (nonatomic, copy, readonly) ViewMaker * (^position)(CGFloat x, CGFloat y);
@property (nonatomic, copy, readonly) ViewMaker * (^size)(CGFloat width,CGFloat height);
@property (nonatomic, copy, readonly) ViewMaker * (^bgColor)(UIColor *color);
@property (nonatomic, copy, readonly) UIView * (^intoView)(UIView *superView);//终结语(提取保存的信息)
@property (nonatomic, copy, readonly) ViewMaker *with;//助词

ViewMaker * _alloc_a(Class cls);//简化调用

@end

NS_ASSUME_NONNULL_END
