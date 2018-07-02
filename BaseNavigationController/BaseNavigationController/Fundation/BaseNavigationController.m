//
//  BaseNavigationController.m
//  BaseNavigationController
//
//  Created by Leasing on 2018/7/2.
//  Copyright © 2018年 Leasing. All rights reserved.
//

#import "BaseNavigationController.h"
#import "UINavigationBar+PLUXExtension.h"

@interface BaseNavigationController ()

@end

@implementation BaseNavigationController

- (void)viewDidLoad {
    [super viewDidLoad];
}

- (void)setNavBarBackgroundAlphaReal:(float)NavBarBackgroundAlphaReal {
    _navBarBackgroundAlphaReal = NavBarBackgroundAlphaReal;
    [[self.navigationBar plux_backgroundView] setAlpha:NavBarBackgroundAlphaReal];
    if (fabs(NavBarBackgroundAlphaReal - 0) <= 0.001) {
        [self.navigationBar setShadowImage:[UIImage new]];
    }
}

- (float)NavBarBackgroundAlphaReal {
    return _navBarBackgroundAlphaReal;
}

//- (void)pushViewController:(UIViewController *)viewController animated:(BOOL)animated
//                completion:(navigation_block_t)completion {
//    self.navigationTransitionCompletion = completion;
//
//    [self pushViewController:viewController animated:animated];
//}

@end
