//
//  WWBaseTabBarController.h
//  ExEducation
//
//  Created by Tidus on 17/4/27.
//  Copyright © 2017年 ExEdu. All rights reserved.
//

#import <UIKit/UIKit.h>

extern NSString * const kWWBaseTabBarControllerRootKey;

@protocol WWBaseTabBarControllerDelegate;
@interface WWBaseTabBarController : UITabBarController

@property (nonatomic, weak) id<WWBaseTabBarControllerDelegate> baseDelegate;

- (instancetype)initWithConfig:(NSDictionary *)config;
- (void)setTabBarItemBadgeValue:(NSInteger)badgeValue itemIndex:(NSInteger)index;

@end




@protocol WWBaseTabBarControllerDelegate <NSObject>

- (BOOL)tabBarController:(WWBaseTabBarController *)tabBarController shouldSelectViewController:(UIViewController *)viewController index:(NSUInteger)index;

- (void)tabBarController:(WWBaseTabBarController *)tabBarController didSelectViewController:(UIViewController *)viewController index:(NSUInteger)index;

@end
