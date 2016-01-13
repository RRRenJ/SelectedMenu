//
//  AppDelegate.h
//  CoCoaLumberjackTest
//
//  Created by wujunyang on 15/10/5.
//  Copyright © 2015年 wujunyang. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <DDLog.h>
#import <CocoaLumberjack.h>
#import "MyExceptionHandler.h"
#import "MyFileLogger.h"

@interface AppDelegate : UIResponder <UIApplicationDelegate>

@property (strong, nonatomic) UIWindow *window;
@property (nonatomic, strong) MyFileLogger *logger;

@end

