//
//  layout_subview.h
//  TipCalc
//
//  Created by 徐佳俊 on 15/4/16.
//  Copyright (c) 2015年 morrison. All rights reserved.
//

#ifndef TipCalc_layout_subview_h
#define TipCalc_layout_subview_h

#import "layout_calc.h"

// Top Bar
#define TOP_BAR_BACK_COLOR      MAIN_COLOR
#define TOP_BAR_FONT(fontSize)  [UIFont fontWithName:@"Zapfino" size:fontSize]
#define TOP_BAR_FONT_SIZE       30

// Input Board
#define INPUT_LEFT_WIDTH        130
//#define KEY_BACK_COLOR          RGBCOLOR(0, 188, 212)
#define KEY_BACK_COLOR          RGBCOLOR(198, 198, 198)
#define SEP_HEIGHT              1
#define MARGIN_RIGHT            20
//#define KEY_FONT(fontSize)      [UIFont fontWithName:@"HelveticaNeue-CondensedBlack" size:fontSize]
#define KEY_FONT(fontSize)      [UIFont fontWithName:@"ChalkboardSE-Bold" size:fontSize]
#define KEY_FONT_SIZE           50

// Result Board
#define RESULT_BACK_COLOR       MAIN_COLOR
#define RESULT_HEIGHT           216

#define RESULT_HEIGHT           216
#define NUMBER_PAD_HEIGHT       216

#endif
