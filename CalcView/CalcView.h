//
//  CalcView.h
//  TipCalc
//
//  Created by 徐佳俊 on 15/4/15.
//  Copyright (c) 2015年 morrison. All rights reserved.
//

#import <UIKit/UIKit.h>

#import "TopBar.h"
#import "InputBoard.h"
#import "ResultBoard.h"

@interface CalcView : UIControl

@property (nonatomic, strong)TopBar *topBar;

@property (nonatomic, strong)InputBoard *ibBill;
@property (nonatomic, strong)InputBoard *ibPercent;
@property (nonatomic, strong)InputBoard *ibSplit;

@property (nonatomic, strong)UIButton *btOK;

@property (nonatomic, strong)ResultBoard *rbTotal;
@property (nonatomic, strong)ResultBoard *rbTip;

@end
