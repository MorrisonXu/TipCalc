//
//  ViewController.m
//  TipCalc
//
//  Created by 徐佳俊 on 15/4/15.
//  Copyright (c) 2015年 morrison. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    [self createView];
    [self initEvents];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
}

#pragma mark - 构造及初始化

- (void)createView {
    _vCalc = [[CalcView alloc] initWithFrame:self.view.frame];
    [self.view addSubview:_vCalc];
}

- (void)initEvents {
    _vCalc.tfBill.delegate = self;
    _vCalc.tfTipPercent.delegate = self;
    _vCalc.tfSplitNum.delegate = self;
    
    [_vCalc addTarget:self action:@selector(hideKeyboard) forControlEvents:UIControlEventTouchUpInside];
}

#pragma mark - UITextFieldDelegate

- (void)textFieldDidEndEditing:(UITextField *)textField {
    if ([self isAllInput]) {
        _vCalc.lbTip.text = [NSString stringWithFormat:@"%.2f", [self calcTip]];
    }
}

#pragma mark - 功能函数

- (BOOL)isAllInput {
    return [_vCalc.tfBill.text length] && [_vCalc.tfTipPercent.text length] && [_vCalc.tfSplitNum.text length];
}

- (void)hideKeyboard {
    [_vCalc.tfBill becomeFirstResponder];
    [_vCalc.tfBill resignFirstResponder];
}

- (float)calcTip {
    int bill = [_vCalc.tfBill.text intValue];
    float tipPercent = [_vCalc.tfTipPercent.text intValue] / 100.0f;
    int splitNum = [_vCalc.tfSplitNum.text intValue];
    
    
    NSLog(@"%d, %f, %d", bill, tipPercent, splitNum);
    return bill * tipPercent / splitNum;
}

@end
