//
//  UserDefaultUtils.m
//  Userdefault
//
//  Created by mac on 2018/6/15.
//  Copyright © 2018年 程维. All rights reserved.
//

#import "UserDefaultUtils.h"

@implementation UserDefaultUtils

+ (BOOL)hasCitys {
    return [[NSUserDefaults standardUserDefaults] objectForKey:@"city"] != nil;
}

+ (NSArray<City *> *)getCitys {
    NSData *data = [[NSUserDefaults standardUserDefaults] objectForKey:@"city"];
    if (data) {
        return [NSKeyedUnarchiver unarchiveObjectWithData:data];
    } else {
        return @[];
    }
}

+ (BOOL)setCitys:(NSArray<City *> *)citys {
    @try {
        NSData *data = [NSKeyedArchiver archivedDataWithRootObject:citys];
        [[NSUserDefaults standardUserDefaults] setObject:data forKey:@"city"];
        [[NSUserDefaults standardUserDefaults] synchronize];
        return YES;
    } @catch (NSException *exception) {
        NSLog(@"set to userdefaults error: %@", exception);
        return NO;
    }
}

@end
