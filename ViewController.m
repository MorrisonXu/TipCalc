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
    
    [_vCalc.ibBill.tfInput becomeFirstResponder];
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
    _vCalc.ibBill.tfInput.delegate = self;
    _vCalc.ibPercent.tfInput.delegate = self;
    _vCalc.ibSplit.tfInput.delegate = self;
    
    [_vCalc.btOK addTarget:self action:@selector(doCalc) forControlEvents:UIControlEventTouchUpInside];
}

#pragma mark - UITextFieldDelegate

- (void)textFieldDidEndEditing:(UITextField *)textField {
}

#pragma mark - 响应函数

- (void)doCalc {
    [self hideKeyboard];
}

#pragma mark - 功能函数

- (void)hideKeyboard {
    [_vCalc.ibBill.tfInput resignFirstResponder];
    [_vCalc.ibPercent.tfInput resignFirstResponder];
    [_vCalc.ibSplit.tfInput resignFirstResponder];
}

//- (float)calcTip {
//    int bill = [_vCalc.tfBill.text intValue];
//    float tipPercent = [_vCalc.tfTipPercent.text intValue] / 100.0f;
//    int splitNum = [_vCalc.tfSplitNum.text intValue];
//    
//    
//    NSLog(@"%d, %f, %d", bill, tipPercent, splitNum);
//    return bill * tipPercent / splitNum;
//}

@end
