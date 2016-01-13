//
//  LoggerDetailViewController.m
//  CoCoaLumberjackTest
//
//  Created by wujunyang on 15/10/8.
//  Copyright © 2015年 wujunyang. All rights reserved.
//

#import "LoggerDetailViewController.h"

@interface LoggerDetailViewController ()
@property (nonatomic, strong) NSString *logText;
@property (nonatomic, strong) NSString *logDate;
@property (nonatomic, strong) UITextView *textView;
@end

@implementation LoggerDetailViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.textView = [[UITextView alloc] initWithFrame:self.view.bounds];
    self.textView.autoresizingMask = UIViewAutoresizingFlexibleHeight | UIViewAutoresizingFlexibleWidth;
    self.textView.editable = NO;
    self.textView.text = self.logText;
    [self.view addSubview:self.textView];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (id)initWithLog:(NSString *)logText forDateString:(NSString *)logDate
{
    self = [super initWithNibName:nil bundle:nil];
    if (self) {
        _logText = logText;
        _logDate = logDate;
        self.title = logDate;
    }
    return self;
}

@end
