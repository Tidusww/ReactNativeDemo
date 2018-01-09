//
//  WWBaseAppDelegate.h
//  ExEducation
//
//  Created by Tidus on 17/4/27.
//  Copyright © 2017年 ExEdu. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "WWBaseTabBarController.h"
#import "WWBaseNavigationController.h"

@interface WWBaseAppDelegate : UIResponder <UIApplicationDelegate>

@property (nonatomic, strong) UIWindow *window;

// 实例
+ (instancetype)sharedAppDelegate;
// 获取TabBarController
- (WWBaseTabBarController *)tabBarController;
// 获取当前navigationcontroller
- (WWBaseNavigationController *)navigationViewController;

@end
