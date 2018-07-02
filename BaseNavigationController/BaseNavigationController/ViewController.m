//
//  ViewController.m
//  BaseNavigationController
//
//  Created by Leasing on 2018/7/2.
//  Copyright © 2018年 Leasing. All rights reserved.
//

#import "ViewController.h"
#import "Masonry.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor redColor];
//    [self SetViewUI];
    [self buttons];
}

- (void)SetViewUI {
//    UILabel *text = [[UILabel alloc] init];
//    text.text = @"隐藏NavBar";
//    text.textAlignment = NSTextAlignmentCenter;
//    [self.view addSubview:text];
//    [text mas_makeConstraints:^(MASConstraintMaker *make) {
//        make.center.equalTo(self.view);
//        make.size.mas_equalTo(CGSizeMake(300, 100));
//    }];

//    UIButton *button = [UIButton buttonWithType:UIButtonTypeCustom];
//    button.backgroundColor = [UIColor whiteColor];
//    [button setTitle:@"Push" forState:UIControlStateNormal];
//    [button setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
//    [button addTarget:self action:@selector(pushAction1) forControlEvents:UIControlEventTouchUpInside];
//    [self.view addSubview:button];
//    [button mas_makeConstraints:^(MASConstraintMaker *make) {
//        make.centerX.mas_equalTo(text.mas_centerX);
//        make.top.equalTo(text.mas_bottom).with.offset(10);
//        make.width.mas_equalTo(@150);
//        make.height.mas_equalTo(@60);
//    }];
}

- (void)buttons {
    NSMutableArray *buttons = [NSMutableArray array];
    [buttons addObject:[self button:@"隐藏NavBar" action:@selector(pushAction1)]];
    [buttons addObject:[self button:@"只有Title" action:@selector(pushAction2)]];
    [buttons addObject:[self button:@"只有Left BarItem" action:@selector(pushAction3)]];
    [buttons addObject:[self button:@"只有Right BarItem" action:@selector(pushAction4)]];
    [buttons mas_distributeViewsAlongAxis:MASAxisTypeVertical withFixedItemLength:80 leadSpacing:100 tailSpacing:100];

    [buttons mas_makeConstraints:^(MASConstraintMaker *make) {
        make.centerX.equalTo(self.view.mas_centerX);
        make.width.mas_equalTo(@350);
    }];
}

- (UIButton *)button:(NSString *)title action:(SEL)sel{
    UIButton *button = [UIButton buttonWithType:UIButtonTypeCustom];
    button.backgroundColor = [UIColor whiteColor];
    [button setTitle:title forState:UIControlStateNormal];
    [button setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
    [button addTarget:self action:sel forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:button];
    return button;
}

- (void)pushAction1 {
    ViewController *vc = [[ViewController alloc] init];
    vc.navBarHidden = YES;
    [self.navigationController pushViewController:vc animated:YES];
}

- (void)pushAction2 {
    ViewController *vc = [[ViewController alloc] init];
    vc.title = @"Only Title";
    [self.navigationController pushViewController:vc animated:YES];
}

- (void)pushAction3 {
    ViewController *vc = [[ViewController alloc] init];
    vc.navBarHidden = YES;
    [self.navigationController pushViewController:vc animated:YES];
}

- (void)pushAction4 {
    ViewController *vc = [[ViewController alloc] init];
    vc.navBarHidden = YES;
    [self.navigationController pushViewController:vc animated:YES];
}
@end
