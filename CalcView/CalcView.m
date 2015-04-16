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
    [self setBackgroundColor:[UIColor blueColor]];
    
    CGRect frameBill = CGRectMake(0, 100, self.frame.size.width, 80);
    CGRect frameTipPercent = CGRectMake(0, 200, self.frame.size.width, 80);
    CGRect frameSplitNum = CGRectMake(0, 300, self.frame.size.width, 80);
    CGRect frameTip = CGRectMake(0, 400, self.frame.size.width, 80);
    
    self.tfBill = [self createTf:self.tfBill withFrame:frameBill];
    self.tfTipPercent = [self createTf:self.tfTipPercent withFrame:frameTipPercent];
    self.tfSplitNum = [self createTf:self.tfSplitNum withFrame:frameSplitNum];
    
    self.lbTip = [[UILabel alloc] initWithFrame:frameTip];
    self.lbTip.text = @"xxx";
    [self.lbTip setBackgroundColor:[UIColor yellowColor]];
    [self addSubview:self.lbTip];
    
}

- (UITextField *)createTf:(UITextField *)tf withFrame:(CGRect)frame {
    tf = [[UITextField alloc] initWithFrame:frame];
    [tf setBackgroundColor:[UIColor redColor]];
    tf.keyboardType = UIKeyboardTypeDecimalPad;
    
    [self addSubview:tf];
    return tf;
}

@end
