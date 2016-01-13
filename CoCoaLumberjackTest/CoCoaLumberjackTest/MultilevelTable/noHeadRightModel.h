//
//  noHeadRightModel.h
//  CoCoaLumberjackTest
//
//  Created by wujunyang on 15/10/10.
//  Copyright © 2015年 wujunyang. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface noHeadRightModel : NSObject

//实体leftTageModel中的主键值
@property(assign,nonatomic)long tagID;

@property(assign,nonatomic)long roomID;
@property(copy,nonatomic)NSString *roomName;
@property(copy,nonatomic)NSString *roomImageUrl;
@end
