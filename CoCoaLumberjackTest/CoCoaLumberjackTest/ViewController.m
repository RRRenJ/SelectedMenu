//
//  ViewController.m
//  CoCoaLumberjackTest
//
//  Created by wujunyang on 15/10/5.
//  Copyright © 2015年 wujunyang. All rights reserved.
//

#import "ViewController.h"

#define FONT_COMPATIBLE_SCREEN_OFFSET(_fontSize_)  [UIFont systemFontOfSize:(_fontSize_ *([UIScreen mainScreen].scale) / 2)]

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    NSLog(@"因子：%f",([[UIScreen mainScreen] scale]/2)*15);
    
    UILabel *myLabel=[[UILabel alloc]initWithFrame:CGRectMake(0, 100, [[UIScreen mainScreen] bounds].size.width, 100)];
    myLabel.numberOfLines=0;
    myLabel.text=@"你好,测试显示字体大小的内容，测评大小内容";
    myLabel.font=FONT_COMPATIBLE_SCREEN_OFFSET(15);
    [self.view addSubview:myLabel];
    
    UITapGestureRecognizer *myFingersTwoTaps =
    [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(FingersTaps)];
    [myFingersTwoTaps setNumberOfTapsRequired:4];
    [myFingersTwoTaps setNumberOfTouchesRequired:2];
    [[self view] addGestureRecognizer:myFingersTwoTaps];
}
- (void)FingersTaps {
    NSLog(@"Action: 两个手指  连续点击四下");
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
}

- (IBAction)BtnAction:(id)sender {
    TwoViewController *tw=[[TwoViewController alloc]init];
    [self.navigationController pushViewController:tw animated:YES];
}

- (IBAction)TabAction:(id)sender {
    menuTableViewController *logTable=[[menuTableViewController alloc]init];
    [self.navigationController pushViewController:logTable animated:YES];
}
@end
