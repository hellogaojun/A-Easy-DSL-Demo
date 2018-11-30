//
//  NSDictionary+Quick.h
//  链式调用
//
//  Created by gaojun on 2018/11/30.
//  Copyright © 2018年 gaojun. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN
///快速取值(点语法)
@interface NSDictionary (Quick)
///取出字符串
@property (nonatomic, readonly) NSString * (^str)(NSString *keyPath);
///取出数组
@property (nonatomic, readonly) NSArray * (^arr)(NSString *keyPath);
///取出字典
@property (nonatomic, readonly) NSDictionary * (^dic)(NSString *keyPath);
///取出基本数据的包装类型(NSNumber)
@property (nonatomic, readonly) NSNumber * (^num)(NSString *keyPath);
///取出整型数
@property (nonatomic, readonly) NSInteger (^i)(NSString *keyPath);
///取出单浮点型数
@property (nonatomic, readonly) CGFloat (^f)(NSString *keyPath);
///取出双浮点型数
@property (nonatomic, readonly) double (^d)(NSString *keyPath);
@end

NS_ASSUME_NONNULL_END
