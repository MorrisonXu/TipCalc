//
//  CalcView.h
//  TipCalc
//
//  Created by 徐佳俊 on 15/4/15.
//  Copyright (c) 2015年 morrison. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface CalcView : UIControl



// Input
@property (nonatomic, strong)UITextField *tfBill;
@property (nonatomic, strong)UITextField *tfTipPercent;
@property (nonatomic, strong)UITextField *tfSplitNum;
// Output
@property (nonatomic, strong)UILabel *lbTip;

@end
