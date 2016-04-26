//
//  CustomButton.h
//  play
//
//  Created by tongguan on 16/3/9.
//  Copyright © 2016年 tongguan. All rights reserved.
//

#import <UIKit/UIKit.h>
typedef enum CustomButtonAlignmentType{
    
    CustomButtonAlignmentTypeVerticalNormal =0,
    CustomButtonAlignmentTypeHorizontalNormal,
    CustomButtonAlignmentTypeVerticalReversed,
    CustomButtonAlignmentTypeHorizontalReversed
}CustomButtonAlignmentType;
@interface CustomButton : UIButton
@property(nonatomic,assign)CGFloat margin;
@property(nonatomic,assign)BOOL brokenFrame;  //default是YES
@property (nonatomic,assign)CustomButtonAlignmentType contentAlignment;
@end
