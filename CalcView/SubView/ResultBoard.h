//
//  ResultBoard.h
//  TipCalc
//
//  Created by 徐佳俊 on 15/4/15.
//  Copyright (c) 2015年 morrison. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ResultBoard : UIView

@property (nonatomic, strong)UILabel *lbKey;
@property (nonatomic, strong)UILabel *lbReslt;

- (void)setKey:(NSString *)key;

@end
