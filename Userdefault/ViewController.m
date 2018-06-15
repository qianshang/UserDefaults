//
//  ViewController.m
//  Userdefault
//
//  Created by mac on 2018/6/15.
//  Copyright © 2018年 程维. All rights reserved.
//

#import "ViewController.h"
#import "City.h"
#import "UserDefaultUtils.h"
@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    if (![UserDefaultUtils hasCitys]) {
        NSArray *citys = @[[City cityWith:1 name:@"北京"],
                           [City cityWith:2 name:@"上海"],
                           [City cityWith:3 name:@"广州"],
                           [City cityWith:4 name:@"深圳"],
                           [City cityWith:5 name:@"天津"],
                           [City cityWith:6 name:@"南京"],
                           [City cityWith:7 name:@"郑州"],
                           [City cityWith:8 name:@"武汉"],
                           [City cityWith:9 name:@"重庆"]
                           ];
        NSLog(@"instance city: %@", citys);
        
        if ([UserDefaultUtils setCitys:citys]) {
            NSLog(@"saved!");
        }
    } else {
        NSLog(@"citys is exist.");
    }
    
    if ([UserDefaultUtils hasCitys]) {
        NSLog(@"get citys from userDefaults: %@", [UserDefaultUtils getCitys]);
    } else {
        NSLog(@"There is no citys, maybe saved error!");
    }
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
