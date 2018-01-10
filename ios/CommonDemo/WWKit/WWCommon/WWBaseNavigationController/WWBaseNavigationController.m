//
//  WWNavigationController.m
//  TidusWWDemo
//
//  Created by Tidus on 16/3/14.
//  Copyright © 2016年 Tidus. All rights reserved.
//

#import "WWBaseNavigationController.h"

@interface WWBaseNavigationController ()

@end

@implementation WWBaseNavigationController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor whiteColor];
//    self.navigationBar.translucent = NO;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    
}

- (void)pushViewController:(UIViewController *)viewController animated:(BOOL)animated
{
    if(self.viewControllers.count == 1){
        viewController.hidesBottomBarWhenPushed = YES;
    }else {
        viewController.hidesBottomBarWhenPushed = NO;
    }
    [super pushViewController:viewController animated:animated];
}


@end
