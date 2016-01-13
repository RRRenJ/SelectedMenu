//
//  rightModel.h
//  CoCoaLumberjackTest
//
//  Created by wujunyang on 15/10/11.
//  Copyright © 2015年 wujunyang. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface rightModel : NSObject
//实体leftTageModel中的主键值
@property(assign,nonatomic)long tagID;
@property(assign,nonatomic)long roomStyleID;
@property(copy,nonatomic)NSString *roomStyleName;
//房间实体headRightModel的数组
@property(strong,nonatomic)NSMutableArray *roomArray;
@end
