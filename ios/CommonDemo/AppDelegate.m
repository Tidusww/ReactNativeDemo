//
//  AppDelegate.m
//  CommonDemo
//
//  Created by Tidus on 17/4/14.
//  Copyright © 2017年 tidus. All rights reserved.
//

#import "AppDelegate.h"

@interface AppDelegate () <WWBaseTabBarControllerDelegate>

@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    [super application:application didFinishLaunchingWithOptions:launchOptions];
    
    [self setRootTab];
    

    return YES;
}


#pragma mark - private
- (void)setRootTab
{
    //初始化分栏控制器
    NSArray *rootViewControllers = @[@"DemoesTableViewController", @"ReactNativeIndexViewController"];
    
    NSDictionary *config = @{kWWBaseTabBarControllerRootKey:rootViewControllers};
    WWBaseTabBarController *tabBarController = [[WWBaseTabBarController alloc] initWithConfig:config];
    tabBarController.baseDelegate = self;
    
    self.window.rootViewController = tabBarController;
}

#pragma mark - WWBaseTabBarControllerDelegate
- (BOOL)tabBarController:(WWBaseTabBarController *)tabBarController shouldSelectViewController:(UIViewController *)viewController index:(NSUInteger)index
{
    if(index == 1){
//        [WWRouter presentUrl:@"RNViewController" animated:YES completion:nil];
//        return NO;
    }
    return YES;
}

- (void)tabBarController:(WWBaseTabBarController *)tabBarController didSelectViewController:(UIViewController *)viewController index:(NSUInteger)index
{
    
}
@end
