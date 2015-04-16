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

- (id)init {
    self = [super init];
//    if (self)
//        [self create];
    return self;
}

#pragma mark - 构造及初始化

//- (void)create {
//    [self createKey];
//    [self createInput];
//}
//
//- (void)createKey {
//    frame.size.width = INPUT_LEFT_WIDTH;
//    _lbKey = [[UILabel alloc] initWithFrame:frame];
//    [_lbKey setBackgroundColor:KEY_BACK_COLOR];
//    _lbKey.textAlignment = NSTextAlignmentCenter;
//    _lbKey.textColor = [UIColor whiteColor];
//    _lbKey.text = @"Default";
//    
//    [self addSubview:_lbKey];
//}
//
//- (void)createInput {
//    frame.origin.x = frame.size.width - INPUT_LEFT_WIDTH;
//    frame.size.width = frame.size.width - INPUT_LEFT_WIDTH;
//    _tfInput = [[UITextField alloc] initWithFrame:frame];
//    _tfInput.keyboardType = UIKeyboardTypeDecimalPad;
//    _tfInput.placeholder = @"0";
//    
//    [self addSubview:_tfInput];
//}

@end
