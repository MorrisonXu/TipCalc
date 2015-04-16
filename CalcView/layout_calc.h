//
//  layout_calc.h
//  TipCalc
//
//  Created by 徐佳俊 on 15/4/15.
//  Copyright (c) 2015年 morrison. All rights reserved.
//

#ifndef TipCalc_layout_calc_h
#define TipCalc_layout_calc_h

// Common
#define RGBCOLOR(r,g,b)         [UIColor colorWithRed:(r)/255.0 green:(g)/255.0 blue:(b)/255.0 alpha:1]
#define STATUS_BAR_HEIGHT       [UIApplication sharedApplication].statusBarFrame.size.height
#define SCREEN_HEIGHT           ([UIScreen mainScreen].bounds.size.height)
#define DECIMAL_PAD_HEIGHT      216
#define MAIN_COLOR              RGBCOLOR(59, 59, 59)

// Top Bar
#define TOP_BAR_HEIGHT          44

// Input Board
#define BILL_Y                  (STATUS_BAR_HEIGHT + TOP_BAR_HEIGHT)
#define BILL_HEIGHT             ((SCREEN_HEIGHT - STATUS_BAR_HEIGHT - TOP_BAR_HEIGHT - OK_HEIGHT - DECIMAL_PAD_HEIGHT) / 3.0f)
#define PERCENT_Y               (BILL_Y + BILL_HEIGHT)
#define PERCENT_HEIGHT          BILL_HEIGHT
#define SPLIT_Y                 (PERCENT_Y + PERCENT_HEIGHT)
#define SPLIT_HEIGHT            BILL_HEIGHT

// OK Button
#define OK_Y                    (SPLIT_Y + SPLIT_HEIGHT)
#define OK_HEIGHT               44
#define OK_BACK_COLOR           RGBCOLOR(0, 188, 212)

// Result Board
#define TOTAL_Y                 (OK_Y + OK_HEIGHT)
#define TOTAL_HEIGHT            (DECIMAL_PAD_HEIGHT / 2.0f)
#define TIP_Y                   (TOTAL_Y + TOTAL_HEIGHT)
#define TIP_HEIGHT              TOTAL_HEIGHT

#endif
