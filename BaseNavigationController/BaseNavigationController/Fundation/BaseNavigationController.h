//
//  BaseNavigationController.h
//  BaseNavigationController
//
//  Created by Leasing on 2018/7/2.
//  Copyright © 2018年 Leasing. All rights reserved.
//

#import <UIKit/UIKit.h>

//typedef void(^navigation_block_t)(UINavigationController *navigationController, BOOL finished);

@interface BaseNavigationController : UINavigationController

@property (nonatomic, assign) float navBarBackgroundAlphaReal;;
//@property (nonatomic, copy) navigation_block_t navigationTransitionCompletion;

//- (void)pushViewController:(UIViewController *)viewController animated:(BOOL)animated
//                completion:(navigation_block_t)completion;

@end
