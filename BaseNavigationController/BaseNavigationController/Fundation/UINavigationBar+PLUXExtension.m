//
//  UINavigationBar+PLUXExtension.m
//  BaseNavigationController
//
//  Created by Leasing on 2018/7/3.
//  Copyright © 2018年 Leasing. All rights reserved.
//

#import "UINavigationBar+PLUXExtension.h"

@implementation UINavigationBar (PLUXExtension)

- (UIView *)plux_backgroundView {
    if (@available(iOS 10, *)) {
        return [self valueForKeyPath:@"_backgroundView._backgroundEffectView"];
    }
    return [self valueForKeyPath:@"_backgroundView"];
}

@end
