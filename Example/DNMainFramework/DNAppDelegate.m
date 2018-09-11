//
//  DNAppDelegate.m
//  DNMainFramework
//
//  Created by 540563689@qq.com on 09/11/2018.
//  Copyright (c) 2018 540563689@qq.com. All rights reserved.
//

#import "DNAppDelegate.h"
#import <DNMainFramework/MainFrameworkAPI.h>
#import "DNHomeViewController.h"
#import "DNGameViewController.h"
#import "DNMeViewController.h"
#import "NXTabBar.h"

@implementation DNAppDelegate

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{
    DNHomeViewController *vc1 = [[DNHomeViewController alloc] init];
    DNMeViewController *vc4 = [[DNMeViewController alloc] init];
    DNGameViewController *vc2 = [[DNGameViewController alloc] init];
    DNMeViewController *vc3 = [[DNMeViewController alloc] init];
    
    [[MainFrameworkAPI sharedInstance] addChildContollers:@[vc1,vc4,vc2,vc3] titles:@[@"首页",@"游戏库",@"期待",@"我的"] imagesNormal:@[@"tabbar_home",@"tabbar_gamelib",@"tabbar_expect_list",@"tabbar_me"] imagesSeleted:@[@"tabbar_home_sel",@"tabbar_gamelib_sel",@"tabbar_expect_list_sel",@"tabbar_me_sel"]];
    
    [[MainFrameworkAPI sharedInstance] updateTabBarWithConfig:^(NXTabBarConfig *config) {
        config.style = TabBarStyleCustom;
        config.globalBackgroundColor = [UIColor whiteColor];
        config.titleColorNormal = [UIColor orangeColor];
        config.titleColorSelected = [UIColor darkGrayColor];
        config.font = [UIFont systemFontOfSize:12];
    }];
    
    [[MainFrameworkAPI sharedInstance] updateNavWithConfig:^(NavigationConfig *config) {
        
        config.globalBackgroundColor = [UIColor whiteColor];
        config.titleColor = [UIColor greenColor];
        config.titleFont = [UIFont systemFontOfSize:16];
        config.itemColor = [UIColor purpleColor];
    }];
    
    
    NXTabBar *tabBar = [[NXTabBar alloc] init];
    [tabBar setCenterIcon:[UIImage imageNamed:@"tabbar_np_playnon"]];
    [tabBar setCenterIconClickBlock:^{
        NSLog(@"#### 点击我干嘛 ####");
    }];
    
    self.window.rootViewController = [[MainFrameworkAPI sharedInstance] rootTabBarControllerAndCustomTabBar:tabBar];
    return YES;
}

- (UIWindow *)window {
    if (_window == nil) {
        _window = [[UIWindow alloc] initWithFrame:[[UIScreen mainScreen] bounds]];
        _window.backgroundColor = [UIColor whiteColor];
        [_window makeKeyAndVisible];
    }
    return _window;
}

- (void)applicationWillResignActive:(UIApplication *)application
{
    // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
    // Use this method to pause ongoing tasks, disable timers, and throttle down OpenGL ES frame rates. Games should use this method to pause the game.
}

- (void)applicationDidEnterBackground:(UIApplication *)application
{
    // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later.
    // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
}

- (void)applicationWillEnterForeground:(UIApplication *)application
{
    // Called as part of the transition from the background to the inactive state; here you can undo many of the changes made on entering the background.
}

- (void)applicationDidBecomeActive:(UIApplication *)application
{
    // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
}

- (void)applicationWillTerminate:(UIApplication *)application
{
    // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
}

@end
