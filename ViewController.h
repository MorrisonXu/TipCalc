//
//  ViewController.h
//  TipCalc
//
//  Created by 徐佳俊 on 15/4/15.
//  Copyright (c) 2015年 morrison. All rights reserved.
//

#import <UIKit/UIKit.h>

#import "CalcView.h"

@interface ViewController : UIViewController <UITextFieldDelegate> {
    CalcView *_vCalc;
}

@end

