//
//  ViewController.m
//  JDSelectDemo
//
//  Created by mark on 15/8/3.
//  Copyright (c) 2015年 mark. All rights reserved.
//

#import "ViewController.h"
#import "MGMineMenuVc.h"
@interface ViewController ()
@property (nonatomic, strong) UIWindow *window;
@property (nonatomic, weak) UIView *upView;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.navigationController.navigationBarHidden = YES;
    UIButton *btn = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    btn.frame = CGRectMake(10, 100, 100, 40);
    [btn addTarget:self action:@selector(actionBtn) forControlEvents:UIControlEventTouchUpInside];
    [btn setTitle:@"sub" forState:UIControlStateNormal];
    [self.view addSubview:btn];
    
    
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)actionBtn{

    UIWindow *window = [[UIWindow alloc] initWithFrame:CGRectMake(100, 0, kScreenWidth-100, kScreenHeight)];
    window.backgroundColor = [[UIColor clearColor] colorWithAlphaComponent:0.7];
    window.windowLevel = UIWindowLevelNormal;
    window.hidden = NO;
    [window makeKeyAndVisible];
    MGMineMenuVc *up = [[MGMineMenuVc alloc] init];
    UINavigationController *nav = [[UINavigationController alloc] initWithRootViewController:up];
    up.view.frame = window.bounds;
    window.rootViewController = nav;
    self.window = window;
    
    UIView *view = [[UIView alloc] initWithFrame:self.view.bounds];
    view.backgroundColor = [[UIColor blackColor] colorWithAlphaComponent:0.5];
    UITapGestureRecognizer *tap  = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(tapAction)];
    [view addGestureRecognizer:tap];
    [self.view addSubview:view];
    self.upView = view;
    
    __weak typeof(self) weak = self;
    [up setCancleBarItemHandle:^{
        [weak.upView removeFromSuperview];
        [weak.window resignKeyWindow];
        weak.window  = nil;
        weak.upView = nil;
    }];
    
}

- (void)tapAction{
    
    [self.upView removeFromSuperview];
    [self.window resignKeyWindow];
    self.window  = nil;
    self.upView = nil;

}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
