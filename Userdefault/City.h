//
//  City.h
//  Userdefault
//
//  Created by mac on 2018/6/15.
//  Copyright © 2018年 程维. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface City : NSObject<NSCoding>

@property (nonatomic, copy) NSString *cityName;
@property (nonatomic, assign) NSInteger code;

+ (instancetype)cityWith:(NSInteger)code name:(NSString *)name;

@end
