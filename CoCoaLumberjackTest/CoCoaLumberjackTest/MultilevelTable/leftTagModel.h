//
//  leftTagModel.h
//  CoCoaLumberjackTest
//
//  Created by wujunyang on 15/10/10.
//  Copyright © 2015年 wujunyang. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface leftTagModel : NSObject

//ID值
@property(assign,nonatomic)long tagID;
//名称
@property(copy,nonatomic)NSString *tagName;
//图标地址（为后期可能带图标做准备）
@property(copy,nonatomic)NSString *tagImageUrl;

//这个来定位右边数据源滚动的位置
@property(assign,nonatomic) float offsetScorller;
@end
