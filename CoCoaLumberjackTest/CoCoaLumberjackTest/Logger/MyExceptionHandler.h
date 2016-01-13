//
//  MyExceptionHandler.h
//  Blossom
//
//  Created by wujunyang on 15/10/8.
//  Copyright © 2015年 wujunyang. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <CocoaLumberjack.h>

@interface MyExceptionHandler : NSObject

+ (void)setDefaultHandler;
+ (NSUncaughtExceptionHandler *)getHandler;
+ (void)TakeException:(NSException *) exception;

@end
