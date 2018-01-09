//
//  ReactNativeViewController.m
//  CommonDemo
//
//  Created by Tidus on 2018/1/7.
//  Copyright © 2018年 tidus. All rights reserved.
//

#import "ReactNativeViewController.h"
#import <React/RCTRootView.h>

@interface ReactNativeViewController ()

@property (nonatomic, strong) RCTRootView *reactRootView;

@property (nonatomic, strong) UIBarButtonItem *closeButton;

@end

@implementation ReactNativeViewController

- (void)loadView
{
    [super loadView];
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    [self.navigationController.navigationBar setBackgroundImage:[[UIImage alloc] init] forBarMetrics:UIBarMetricsDefault];
    self.navigationController.navigationBar.shadowImage = [[UIImage alloc] init];
    self.navigationItem.rightBarButtonItem = self.closeButton;
    
    [self.view addSubview:self.reactRootView];
    
}

- (RCTRootView *)reactRootView
{
    if(!_reactRootView){
        NSURL *jsCodeLocation = [NSURL URLWithString:@"http://localhost:8081/index.bundle?platform=ios"];
        NSDictionary *initialProperties = @{ @"scores" : @[
                                                     @{
                                                        @"name" : @"Alex",
                                                        @"value": @"42"
                                                        },
                                                     @{
                                                        @"name" : @"Joel",
                                                        @"value": @"10"
                                                        }
                                                    ]
                                         };
        _reactRootView = [[RCTRootView alloc] initWithBundleURL:jsCodeLocation
                                                     moduleName:@"UCLoginPage"
                                              initialProperties:initialProperties
                                                  launchOptions:nil];
        _reactRootView.frame = CGRectMake(0, 0, SCREEN_WIDTH, self.rootViewHeight);
    }
    return _reactRootView;
}

- (UIBarButtonItem *)closeButton
{
    if(!_closeButton){
        _closeButton = [[UIBarButtonItem alloc] bk_initWithBarButtonSystemItem:UIBarButtonSystemItemStop handler:^(id sender) {
            [WWRouter dismissViewController:self animated:YES completion:nil];
        }];
    }
    return _closeButton;
}

@end
