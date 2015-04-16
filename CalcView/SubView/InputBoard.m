//
//  InputBoard.m
//  TipCalc
//
//  Created by 徐佳俊 on 15/4/15.
//  Copyright (c) 2015年 morrison. All rights reserved.
//

#import "InputBoard.h"

#import "layout_subview.h"

@implementation InputBoard

- (id)initWithFrame:(CGRect)frame {
    self = [super initWithFrame:frame];
    if (self)
        [self create];
    return self;
}

#pragma mark - 构造及初始化

- (void)create {
    [self createKey];
    [self createInput];
    [self createSep];
}

- (void)createKey {
    _lbKey = [[UILabel alloc] initWithFrame:CGRectMake(0, 0, INPUT_LEFT_WIDTH, self.frame.size.height)];
    [_lbKey setBackgroundColor:KEY_BACK_COLOR];
    _lbKey.textAlignment = NSTextAlignmentCenter;
    _lbKey.textColor = [UIColor whiteColor];
    _lbKey.text = @"Default";
    
    [self addSubview:_lbKey];
}

- (void)createInput {
    _tfInput = [[UITextField alloc] initWithFrame:CGRectMake(INPUT_LEFT_WIDTH, 0, self.frame.size.width - INPUT_LEFT_WIDTH, self.frame.size.height)];
    _tfInput.keyboardType = UIKeyboardTypeDecimalPad;
    [_tfInput setBackgroundColor:[UIColor whiteColor]];
    _tfInput.textAlignment = NSTextAlignmentRight;
    _tfInput.placeholder = @"0";
    
    _tfInput.rightViewMode=UITextFieldViewModeAlways;
    _tfInput.rightView = [[UIView alloc] initWithFrame:CGRectMake(0, 0, MARGIN_RIGHT, self.frame.size.height)];
    
    [self addSubview:_tfInput];
}

- (void)createSep {
    _vSep = [[UIView alloc] initWithFrame:CGRectMake(0, self.frame.size.height - SEP_HEIGHT, self.frame.size.width, SEP_HEIGHT)];
    [_vSep setBackgroundColor:TOP_BAR_BACK_COLOR];
    
    [self addSubview:_vSep];
}

#pragma mark - 设置函数

- (void)setKey:(NSString *)key {
    _lbKey.text = key;
}

@end
