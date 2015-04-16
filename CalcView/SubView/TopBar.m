//
//  TopBar.m
//  TipCalc
//
//  Created by 徐佳俊 on 15/4/16.
//  Copyright (c) 2015年 morrison. All rights reserved.
//

#import "TopBar.h"

#import "layout_subview.h"

@implementation TopBar

- (id)initWithFrame:(CGRect)frame {
    self = [super initWithFrame:frame];
    if (self)
        [self create];
    return self;
}

#pragma mark - 构造及初始化

- (void)create {
    [self setBackgroundColor:TOP_BAR_BACK_COLOR];
    
    [self createTitle];
}

- (void)createTitle {
    _lbTitle = [[UILabel alloc] initWithFrame:CGRectMake(0, STATUS_BAR_HEIGHT, self.frame.size.width, self.frame.size.height)];
    _lbTitle.textColor = [UIColor whiteColor];
    _lbTitle.textAlignment = NSTextAlignmentCenter;
    
    _lbTitle.text = @"TIP CALC by Kiki";
    
    [self addSubview:_lbTitle];
}

@end
