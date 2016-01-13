//
//  leftTableCell.h
//  CoCoaLumberjackTest
//
//  Created by wujunyang on 15/10/10.
//  Copyright © 2015年 wujunyang. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "leftTagModel.h"

@interface leftTableCell : UITableViewCell

@property(strong,nonatomic)leftTagModel *curLeftTagModel;
//是否被选中
@property(assign,nonatomic)BOOL hasBeenSelected;

@end
