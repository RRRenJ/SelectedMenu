//
//  AppDelegate.m
//  CoCoaLumberjackTest
//
//  Created by wujunyang on 15/10/5.
//  Copyright © 2015年 wujunyang. All rights reserved.
//

#import "AppDelegate.h"


@interface AppDelegate ()

@end

@implementation AppDelegate

static const int ddLogLevel = LOG_LEVEL_VERBOSE;

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    //初始化
    [MyExceptionHandler setDefaultHandler];
    self.logger=[[MyFileLogger alloc]init];
    
    NSString *path = NSHomeDirectory();//主目录
    NSLog(@"当前项目的路径:%@",path);
    
    return YES;
}

- (void)applicationWillResignActive:(UIApplication *)application {
}

- (void)applicationDidEnterBackground:(UIApplication *)application {

}

- (void)applicationWillEnterForeground:(UIApplication *)application {
}

- (void)applicationDidBecomeActive:(UIApplication *)application {
}

- (void)applicationWillTerminate:(UIApplication *)application {
}

@end
