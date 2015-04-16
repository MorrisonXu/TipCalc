//
//  CalcView.m
//  TipCalc
//
//  Created by 徐佳俊 on 15/4/15.
//  Copyright (c) 2015年 morrison. All rights reserved.
//

#import "CalcView.h"
#import "layout_calc.h"

@implementation CalcView

- (id)initWithFrame:(CGRect)frame {
    self = [super initWithFrame:frame];
    if (self) {
        [self create];
    }
    return self;
}

- (void)create {
    [self setBackgroundColor:MAIN_COLOR];
    
    [self createTopBar];
    
    _ibBill = [self createIb:_ibBill withFrame:CGRectMake(0, BILL_Y, self.frame.size.width, BILL_HEIGHT)];
    _ibPercent = [self createIb:_ibPercent withFrame:CGRectMake(0, PERCENT_Y, self.frame.size.width, PERCENT_HEIGHT)];
    _ibSplit = [self createIb:_ibSplit withFrame:CGRectMake(0, SPLIT_Y, self.frame.size.width, SPLIT_HEIGHT)];
    [_ibBill setKey:@"BILL ￥"];
    [_ibPercent setKey:@"TIP %"];
    [_ibSplit setKey:@"SPLIT"];
    
    [self createOK];
    
    _rbTotal = [self createRb:_rbTotal withFrame:CGRectMake(0, TOTAL_Y, self.frame.size.width, TOTAL_HEIGHT)];
    _rbTip = [self createRb:_rbTip withFrame:CGRectMake(0, TIP_Y, self.frame.size.width, TIP_HEIGHT)];
    [_rbTotal setKey:@"TOTAL"];
    [_rbTip setKey:@"TIP"];
}

- (void)createTopBar {
    _topBar = [[TopBar alloc] initWithFrame:CGRectMake(0, STATUS_BAR_HEIGHT, self.frame.size.width, TOP_BAR_HEIGHT)];
    [self addSubview:_topBar];
}

- (InputBoard *)createIb:(InputBoard *)ib withFrame:(CGRect)frame {
    ib = [[InputBoard alloc] initWithFrame:frame];
    [self addSubview:ib];
    return ib;
}

- (void)createOK {
    _btOK = [[UIButton alloc] initWithFrame:CGRectMake(0, OK_Y, self.frame.size.width, OK_HEIGHT - 1)]; // -1为了看起来有一条分割线
    [_btOK setBackgroundColor:OK_BACK_COLOR];
    [_btOK setTintColor:[UIColor whiteColor]];
    [_btOK setTitle:@"OK" forState:UIControlStateNormal];
    
    [self addSubview:_btOK];
}

- (ResultBoard *)createRb:(ResultBoard *)rb withFrame:(CGRect)frame {
    rb = [[ResultBoard alloc] initWithFrame:frame];
    [self addSubview:rb];
    return rb;
}

@end
