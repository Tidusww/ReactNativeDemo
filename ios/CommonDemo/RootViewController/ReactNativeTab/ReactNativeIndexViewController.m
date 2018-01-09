//
//  ReactNativeIndexViewController.m
//  CommonDemo
//
//  Created by Tidus on 2018/1/8.
//  Copyright © 2018年 tidus. All rights reserved.
//

#import "ReactNativeIndexViewController.h"
#import <React/RCTRootView.h>

@interface ReactNativeIndexViewController ()

@property (nonatomic, strong) RCTRootView *reactRootView;

@end

@implementation ReactNativeIndexViewController

- (void)loadView
{
    [super loadView];
    [self.view addSubview:self.reactRootView];
}

- (void)viewDidLoad {
    [super viewDidLoad];
    
//    self.navigationController.navigationBar.translucent = NO;
    self.edgesForExtendedLayout = UIRectEdgeNone;
//    self.automaticallyAdjustsScrollViewInsets = NO;
}

#pragma mark - getter
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

@end
