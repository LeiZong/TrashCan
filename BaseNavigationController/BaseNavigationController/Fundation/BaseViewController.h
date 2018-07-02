//
//  BaseViewController.h
//  BaseNavigationController
//
//  Created by Leasing on 2018/7/2.
//  Copyright © 2018年 Leasing. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface BaseViewController : UIViewController

@property (nonatomic, assign) BOOL navBarHidden;
@property (nonatomic, strong) UIColor *navBarTintColor;
@property (nonatomic, assign) float navBarBackgroundAlpha;

@end
