//
//  ResultBoard.m
//  TipCalc
//
//  Created by 徐佳俊 on 15/4/15.
//  Copyright (c) 2015年 morrison. All rights reserved.
//

#import "ResultBoard.h"

#import "layout_subview.h"

@implementation ResultBoard

- (id)initWithFrame:(CGRect)frame {
    self = [super initWithFrame:frame];
    if (self)
        [self create];
    return self;
}

#pragma mark - 构造及初始化

- (void)create {
    [self createKey];
    [self createResult];
}

- (void)createKey {
    _lbKey = [[UILabel alloc] initWithFrame:CGRectMake(0, 0, INPUT_LEFT_WIDTH, self.frame.size.height)];
    _lbKey.textAlignment = NSTextAlignmentCenter;
    _lbKey.textColor = [UIColor whiteColor];
    _lbKey.text = @"Default";
    
    [self addSubview:_lbKey];
}

- (void)createResult {
    _lbReslt = [[UILabel alloc] initWithFrame:CGRectMake(INPUT_LEFT_WIDTH, 0, self.frame.size.width - INPUT_LEFT_WIDTH - MARGIN_RIGHT, self.frame.size.height)];
    _lbReslt.textAlignment = NSTextAlignmentRight;
    _lbReslt.textColor = [UIColor whiteColor];
    _lbReslt.text = @"0";
    
    [self addSubview:_lbReslt];
}

#pragma mark - 设置函数

- (void)setKey:(NSString *)key {
    _lbKey.text = key;
}

@end
