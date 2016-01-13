//
//  MyFileLogger.m
//  Blossom
//
//  Created by wujunyang on 15/10/8.
//  Copyright © 2015年 wujunyang. All rights reserved.
//

#import "MyFileLogger.h"

@implementation MyFileLogger

#pragma mark - Inititlization
- (instancetype)init
{
    self = [super init];
    
    if (self) {
        [self configureLogging];
    }
    return self;
}

#pragma mark 单例模式

static MyFileLogger *sharedManager=nil;

+(MyFileLogger *)sharedManager
{
    static dispatch_once_t once;
    dispatch_once(&once, ^{
        sharedManager=[[self alloc]init];
    });
    return sharedManager;
}


#pragma mark - 配记日志类型

- (void)configureLogging
{
#ifdef DEBUG
    [DDLog addLogger:[DDASLLogger sharedInstance]];
    [DDLog addLogger:[DDTTYLogger sharedInstance]];
#endif
    [DDLog addLogger:self.fileLogger];
}

#pragma mark - 初始化文件记录类型

- (DDFileLogger *)fileLogger
{
    if (!_fileLogger) {
        DDFileLogger *fileLogger = [[DDFileLogger alloc] init];
        fileLogger.rollingFrequency = 60 * 60 * 24; // 24 hour rolling
        fileLogger.logFileManager.maximumNumberOfLogFiles = 7;
        
        _fileLogger = fileLogger;
    }
    
    return _fileLogger;
}
@end
