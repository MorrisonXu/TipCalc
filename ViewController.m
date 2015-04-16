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
    
//    [_vCalc.ibBill.tfInput becomeFirstResponder];
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
    
    if (![self isAllFilled]) {
        [self showAlert:@"Not All Filled!"];
        return;
    }
    
    if (![self checkInput])
        return;
    
    _vCalc.rbTotal.lbReslt.text = [NSString stringWithFormat:@"%.2f", [self calcTotal]];
    _vCalc.rbTip.lbReslt.text = [NSString stringWithFormat:@"%.2f", [self calcTip]];
}

#pragma mark - 功能函数

- (void)hideKeyboard {
    [_vCalc.ibBill.tfInput resignFirstResponder];
    [_vCalc.ibPercent.tfInput resignFirstResponder];
    [_vCalc.ibSplit.tfInput resignFirstResponder];
}

- (float)calcTotal {
    float bill = [_vCalc.ibBill.tfInput.text floatValue];
    int split = [_vCalc.ibSplit.tfInput.text intValue];
    
    return bill / split;
}

- (float)calcTip {
    float bill = [_vCalc.ibBill.tfInput.text floatValue];
    float percent = [_vCalc.ibPercent.tfInput.text intValue] / 100.0f;
    int split = [_vCalc.ibSplit.tfInput.text intValue];
    
    return bill * percent / split;
}

- (BOOL)checkInput {
    NSString *alertMsg = @"";
    if (![self isPureFloat:_vCalc.ibBill.tfInput.text]) {
        alertMsg = @"<BILL ￥> should be pure float!";
        [_vCalc.ibBill.tfInput becomeFirstResponder];
    } else if (![self isPureInt:_vCalc.ibPercent.tfInput.text] || ![self isPercent:_vCalc.ibPercent.tfInput.text]) {
        alertMsg = @"<TIP %> should be pure int and between 0 and 100!";
        [_vCalc.ibPercent.tfInput becomeFirstResponder];
    } else if (![self isPureInt:_vCalc.ibSplit.tfInput.text]) {
        alertMsg = @"<SPLIT> should be pure int!";
        [_vCalc.ibSplit.tfInput becomeFirstResponder];
    }
    
    if ([alertMsg length] == 0)
        return true;
    else {
        [self showAlert:alertMsg];
        return false;
    }
}

- (BOOL)isPercent:(NSString *)string {
    int num = [string intValue];
    return num > 0 && num < 100;
}

- (BOOL)isPureInt:(NSString *)string {
    NSScanner* scan = [NSScanner scannerWithString:string];
    int val;
    return[scan scanInt:&val] && [scan isAtEnd];
}

- (BOOL)isPureFloat:(NSString *)string {
    NSScanner* scan = [NSScanner scannerWithString:string];
    float val;
    return[scan scanFloat:&val] && [scan isAtEnd];
}

- (BOOL)isAllFilled {
    return [_vCalc.ibBill.tfInput.text length] && [_vCalc.ibPercent.tfInput.text length] && [_vCalc.ibSplit.tfInput.text length];
}

- (void)showAlert:(NSString *)msg {
    [[[UIAlertView alloc]initWithTitle:@"Alert"
                               message:msg
                              delegate:self
                     cancelButtonTitle:@"OK"
                     otherButtonTitles:nil] show];
}

@end
