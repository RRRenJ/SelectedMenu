//
//  rightCollectionViewCell.h
//  CoCoaLumberjackTest
//
//  Created by wujunyang on 15/10/10.
//  Copyright © 2015年 wujunyang. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "headRightModel.h"

@interface rightCollectionViewCell : UICollectionViewCell

@property(strong,nonatomic)headRightModel *curHeadRightModel;

+(CGSize)ccellSize;

@end
