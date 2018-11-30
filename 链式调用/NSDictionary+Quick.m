//
//  NSDictionary+Quick.m
//  链式调用
//
//  Created by gaojun on 2018/11/30.
//  Copyright © 2018年 gaojun. All rights reserved.
//

#import "NSDictionary+Quick.h"

@implementation NSDictionary (Quick)
- (NSString * _Nonnull (^)(NSString * _Nonnull))str {
    return ^NSString * (NSString *keyPath) {
        id item = [self valueForKeyPath:keyPath];
        if ([item isKindOfClass:[NSString class]]) {
            return item;
        }
        return @"";
    };
}

- (NSArray * _Nonnull (^)(NSString * _Nonnull))arr {
    return ^NSArray * (NSString *keyPath) {
        id item = [self valueForKeyPath:keyPath];
        if ([item isKindOfClass:[NSArray class]]) {
            return item;
        }
        return @[];
    };
}

- (NSDictionary * _Nonnull (^)(NSString * _Nonnull))dic {
    return ^NSDictionary * (NSString *keyPath) {
        id item = [self valueForKeyPath:keyPath];
        if ([item isKindOfClass:[NSDictionary class]]) {
            return item;
        }
        return @{};
    };
}

- (NSNumber * _Nonnull (^)(NSString * _Nonnull))num {
    return ^NSNumber * (NSString *keyPath) {
        id item = [self valueForKeyPath:keyPath];
        if ([item isKindOfClass:[NSNumber class]]) {
            return item;
        }
        return @(0);
    };
}

- (CGFloat (^)(NSString * _Nonnull))f {
    return ^CGFloat (NSString *keyPath) {
        return [self.str(keyPath) floatValue];
    };
}

- (NSInteger (^)(NSString * _Nonnull))i {
    return ^NSInteger (NSString *keyPath) {
        return [self.str(keyPath) integerValue];
    };
}

- (double (^)(NSString * _Nonnull))d {
    return ^double (NSString *keyPath) {
        return [self.str(keyPath) doubleValue];
    };
}

@end
