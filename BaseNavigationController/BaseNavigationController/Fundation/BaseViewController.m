//
//  BaseViewController.m
//  BaseNavigationController
//
//  Created by Leasing on 2018/7/2.
//  Copyright © 2018年 Leasing. All rights reserved.
//

#import "BaseViewController.h"
#import "BaseNavigationController.h"

@interface BaseViewController ()<UINavigationControllerDelegate>

@end

@implementation BaseViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.navigationController.delegate = self;
//    self.navBarHidden = NO;
//    self.navBarTintColor = [UIColor whiteColor];
//    self.navBarBackgroundAlpha = 1.0;
}

-(void)setNavBarHidden:(BOOL)NavBarHidden {
    _navBarHidden = NavBarHidden;
    [self.navigationController setNavigationBarHidden:NavBarHidden animated:true];
}

- (BOOL)NavBarHidden {
    return _navBarHidden;
}

- (void)setNavBarTintColor:(UIColor *)NavBarTintColor {
    _navBarTintColor = NavBarTintColor;
    self.navigationController.navigationBar.barTintColor = NavBarTintColor;
}

- (void)setNavBarBackgroundAlpha:(float)NavBarBackgroundAlpha {
    _navBarBackgroundAlpha = NavBarBackgroundAlpha;
}

- (float)NavBarBackgroundAlpha {
    return _navBarBackgroundAlpha;
}

- (void)navigationController:(UINavigationController *)navigationController willShowViewController:(UIViewController *)viewController animated:(BOOL)animated {
    NSLog(@"~~~~");
    if (![navigationController isMemberOfClass:[BaseNavigationController class]]) {
        return;
    }
    if (![viewController isKindOfClass:[BaseViewController class]]) {
        return;
    }
    BaseNavigationController *navController = (BaseNavigationController *)navigationController;
    BaseViewController *vController = (BaseViewController *)viewController;
//
//    id<UIViewControllerTransitionCoordinator> transitionCoordinator = navController.topViewController.transitionCoordinator;
//
//    void (^animateAlongsideTransition)(id <UIViewControllerTransitionCoordinatorContext>) = NULL;
//    void (^completion)(id <UIViewControllerTransitionCoordinatorContext>) = NULL;
//
//    if (![[navController valueForKey:@"isBuiltinTransition"] boolValue] || !navController.navigationBar.isTranslucent) {
//
//        [navController setNavigationBarHidden:[self navBarHidden] animated:animated];
//        animateAlongsideTransition = ^(id<UIViewControllerTransitionCoordinatorContext> context) {
//            navController.navigationBar.barTintColor = [self navBarTintColor];
//            navController.navBarBackgroundAlphaReal = [self navBarBackgroundAlpha];
//        };
//    }
    [navController setNavigationBarHidden:vController.navBarHidden animated:true];


//    !navController.navigationTransitionCompletion ?: navController.navigationTransitionCompletion(navController, true);
//    navController.navigationTransitionCompletion = NULL;
}

@end
