//
//  CustomButton.m
//  play
//
//  Created by tongguan on 16/3/9.
//  Copyright © 2016年 tongguan. All rights reserved.
//

#import "CustomButton.h"
#define DEFAULT_MARGIN 3
@implementation CustomButton
- (instancetype)init
{
    self = [super init];
    if (self) {
        _margin = DEFAULT_MARGIN;
    }
    return self;
}
- (instancetype)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        _margin = DEFAULT_MARGIN;
        _brokenFrame = YES;
        self.titleLabel.textAlignment = NSTextAlignmentCenter;
    }
    return self;
}
+(instancetype)buttonWithType:(UIButtonType)buttonType{
    CustomButton* btn = [super buttonWithType:buttonType];
    btn.margin = DEFAULT_MARGIN;
    return btn;
}
-(void)layoutSubviews {
    [super layoutSubviews];
    CGSize labSize = [self.titleLabel.text sizeWithAttributes:@{NSFontAttributeName:self.titleLabel.font}];
    CGSize imgSize = self.imageView.image.size;
    CGFloat height = imgSize.height + _margin+labSize.height;
    CGFloat width = imgSize.width + _margin+labSize.width;
    if(!self.brokenFrame){
        height = MIN(height, self.frame.size.height);
        width = MIN(width, self.frame.size.width);
        imgSize = self.imageView.frame.size;
        labSize.height = MIN(labSize.height, self.frame.size.height - imgSize.height);
        labSize.width = MIN(labSize.width, self.frame.size.width- imgSize.width);


    }
    switch (self.contentAlignment) {
        case CustomButtonAlignmentTypeVerticalNormal:
        {
            
            CGRect rect;
            rect.size = imgSize;
            rect.origin.x = (self.frame.size.width - rect.size.width)*0.5;
            rect.origin.y = (self.frame.size.height - height)*0.5;
            self.imageView.frame = rect;
            
            rect.origin.y = CGRectGetMaxY(rect) + _margin;
            rect.size.width = self.frame.size.width;
            rect.origin.x = (self.frame.size.width - rect.size.width)*0.5;
            rect.size.height = labSize.height;
            //        newFrame.size.height = self.frame.size.height - newFrame.origin.y;
            self.titleLabel.frame = rect;

        }
            
            break;
        case CustomButtonAlignmentTypeHorizontalNormal:
        {
            
            CGRect rect;
            rect.size = imgSize;
            rect.origin.x = (self.frame.size.width - width)*0.5;
            rect.origin.y = (self.frame.size.height - rect.size.height)*0.5;
            self.imageView.frame = rect;

            rect.origin.x = CGRectGetMaxX(rect) + _margin;
            rect.size = labSize;
            rect.origin.y = (self.frame.size.height - rect.size.height)*0.5;
            //        newFrame.size.height = self.frame.size.height - newFrame.origin.y;
            self.titleLabel.frame = rect;
        }
            
            break;
        case CustomButtonAlignmentTypeVerticalReversed:
        {
            
            CGRect rect;
            rect.origin.y = (self.frame.size.height - height)*0.5;
            rect.size.width = self.frame.size.width;
            rect.origin.x = (self.frame.size.width - rect.size.width)*0.5;
            rect.size.height = labSize.height;
            //        newFrame.size.height = self.frame.size.height - newFrame.origin.y;
            self.titleLabel.frame = rect;
            
            rect.origin.y = CGRectGetMaxY(rect) + _margin;
            rect.size = imgSize;
            rect.origin.x = (self.frame.size.width - rect.size.width)*0.5;
            self.imageView.frame = rect;
            
        }
            
            break;
        case CustomButtonAlignmentTypeHorizontalReversed:
        {
            
            CGRect rect;
            rect.origin.x = (self.frame.size.width - width)*0.5;
            rect.size = labSize;
            rect.origin.y = (self.frame.size.height - rect.size.height)*0.5;
            //        newFrame.size.height = self.frame.size.height - newFrame.origin.y;
            self.titleLabel.frame = rect;
            
            rect.origin.x = CGRectGetMaxX(rect) + _margin;
            rect.size = imgSize;
            rect.origin.y = (self.frame.size.height - rect.size.height)*0.5;
            self.imageView.frame = rect;

        }
            break;
            
        default:
            break;
    }
  

}
-(void)setContentAlignment:(CustomButtonAlignmentType)contentAlignment{
    _contentAlignment = contentAlignment;
    [self setNeedsDisplay];
}
@end
