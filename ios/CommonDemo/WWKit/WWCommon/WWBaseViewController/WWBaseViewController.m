//
//  WWBaseViewController.m
//  TidusWWDemo
//
//  Created by Tidus on 17/2/23.
//  Copyright © 2017年 Tidus. All rights reserved.
//

#import "WWBaseViewController.h"
#import "WWRouter.h"

@interface WWBaseViewController () <WWRouterProtocol>

@end

@implementation WWBaseViewController

#pragma mark - WWRouterProtocol
- (UIViewController *)initForRouterWithUrl:(NSString *)url param:(NSDictionary *)param;
{
    //初始化
    self = [super init];
    if(self){
        [param enumerateKeysAndObjectsUsingBlock:^(id key, id obj, BOOL *stop) {
            @try {
                [self setValue:obj forKeyPath:key];
            } @catch (NSException *exception) {
                NSLog(@"%@ is not key value coding-compliant for the key %@.", [self class], key);
            } @finally {
                
            }
        }];
    }
    
    return self;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    
    //default settings
    self.navigationController.navigationBar.translucent = YES;
    self.edgesForExtendedLayout = UIRectEdgeAll;
    self.automaticallyAdjustsScrollViewInsets = YES;
    
    self.view.backgroundColor = [UIColor whiteColor];
}

- (void)viewWillDisappear:(BOOL)animated
{
    [super viewWillDisappear:animated];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
}


#pragma mark - setter
/**
 *  方便获取根视图的高度
 */
- (CGFloat)rootViewHeight
{
    CGFloat rootViewHeight = SCREEN_HEIGHT;
    
    if(!self.navigationController.navigationBar.translucent || !(self.edgesForExtendedLayout & UIRectEdgeTop)){
        //导航栏不透明 或者 视图不伸延到顶部，视图都从导航栏的底部开始算，所以减去导航栏和状态栏的高度
        rootViewHeight = rootViewHeight - STATUS_BAR_HEIGHT - NAVIGATION_BAR_HEIGHT;
    }
    
    if(!(self.edgesForExtendedLayout & UIRectEdgeBottom)){
        //视图不伸延到底部，减去分栏的高度
        rootViewHeight = rootViewHeight - TAB_BAR_HEIGHT;
    }
    
    
    
    return rootViewHeight;
}

@end
