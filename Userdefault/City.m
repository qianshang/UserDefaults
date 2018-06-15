//
//  City.m
//  Userdefault
//
//  Created by mac on 2018/6/15.
//  Copyright © 2018年 程维. All rights reserved.
//

#import "City.h"


@implementation City

+ (instancetype)cityWith:(NSInteger)code name:(NSString *)name {
    City *city = [City new];
    
    city.code = code;
    city.cityName = name;
    
    return city;
}

- (instancetype)initWithCoder:(NSCoder *)aDecoder {
    self = [super init];
    
    self.cityName = [aDecoder decodeObjectForKey:@"cityName"];
    self.code = [[aDecoder decodeObjectForKey:@"code"] integerValue];
    
    return self;
}

- (void)encodeWithCoder:(nonnull NSCoder *)aCoder {
    [aCoder encodeObject:self.cityName forKey:@"cityName"];
    [aCoder encodeObject:@(self.code) forKey:@"code"];
}

- (NSString *)description
{
    return [NSString stringWithFormat:@"%@ - %zd", [self.cityName stringByRemovingPercentEncoding], self.code];
}

@end
