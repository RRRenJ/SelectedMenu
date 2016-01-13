//
//  myHeadView.m
//  CoCoaLumberjackTest
//
//  Created by wujunyang on 15/10/12.
//  Copyright © 2015年 wujunyang. All rights reserved.
//

#import "myHeadView.h"

@interface myHeadView()
@property (strong, nonatomic) UILabel *label;
@end


@implementation myHeadView

- (id)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self)
    {
        self.label = [[UILabel alloc] init];
        //在这边调整它的位置
        self.label.frame=CGRectMake(0, 10, 250, 25);
        self.label.font = [UIFont systemFontOfSize:18];
        self.label.backgroundColor=[UIColor brownColor];
        self.label.textColor=[UIColor yellowColor];
        [self addSubview:self.label];
    }
    return self;
}

- (void) setLabelText:(NSString *)text
{
    self.label.text = text;
}

@end
