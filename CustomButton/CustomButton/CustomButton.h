//
//  CustomButton.h
//  play
//
//  Created by tongguan on 16/3/9.
//  Copyright © 2016年 tongguan. All rights reserved.
//

#import <UIKit/UIKit.h>
typedef enum CustomButtonAlignmentType{
    CustomButtonAlignmentTypeVertical =0,
    CustomButtonAlignmentTypeHorizontal
}CustomButtonAlignmentType;
@interface CustomButton : UIButton
@property(nonatomic,assign)CGFloat margin;
@property (nonatomic,assign)CustomButtonAlignmentType contentAlignment;
@end
