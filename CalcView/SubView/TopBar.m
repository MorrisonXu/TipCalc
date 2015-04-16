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
    CGRect frameTitle = self.frame;
    frameTitle.origin.y = 0;
    _lbTitle = [[UILabel alloc] initWithFrame:frameTitle];
    _lbTitle.textColor = [UIColor whiteColor];
    _lbTitle.textAlignment = NSTextAlignmentCenter;
    _lbTitle.font = TOP_BAR_FONT(FONT_PX2PT(TOP_BAR_FONT_SIZE));
    
    _lbTitle.text = @"TIP CALC by Kiki";
    
    [self addSubview:_lbTitle];
}

@end
