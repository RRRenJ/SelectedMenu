//
//  MyFileLogger.h
//  Blossom
//
//  Created by wujunyang on 15/10/8.
//  Copyright © 2015年 wujunyang. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <CocoaLumberjack.h>

@interface MyFileLogger : NSObject
@property (nonatomic, strong, readwrite) DDFileLogger *fileLogger;

+(MyFileLogger *)sharedManager;

@end
