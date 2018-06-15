//
//  UserDefaultUtils.h
//  Userdefault
//
//  Created by mac on 2018/6/15.
//  Copyright © 2018年 程维. All rights reserved.
//

#import <Foundation/Foundation.h>

@class City;
@interface UserDefaultUtils : NSObject

+ (BOOL)hasCitys;
+ (NSArray<City *> *)getCitys;
+ (BOOL)setCitys:(NSArray<City *> *)citys;

@end
