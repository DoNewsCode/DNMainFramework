//
//  NavigationConfig.m
//  OAManager
//
//  Created by 郑佳 on 2017/12/3.
//  Copyright © 2017年 kepuna. All rights reserved.
//

#import "NavigationConfig.h"

@implementation NavigationConfig

+ (instancetype)defaultConfig {

    NavigationConfig *config = [[NavigationConfig alloc] init];
    config.globalBackgroundColor = [UIColor whiteColor];
    config.bottomLineColor = [UIColor grayColor];
    return config;
}

- (void)updateNavWithConfig:(void (^)(NavigationConfig *))configBlock {
    if (configBlock) {
        configBlock(self);
    }
}

@end
