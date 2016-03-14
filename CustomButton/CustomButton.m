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
    
    if (_contentAlignment == CustomButtonAlignmentTypeVertical) {
    // Center image
        CGSize labSize = [self.titleLabel.text sizeWithAttributes:@{NSFontAttributeName:self.titleLabel.font}];
        CGFloat height = self.imageView.image.size.height + _margin+labSize.height;
        CGRect rect = self.imageView.frame;
        rect.origin.x = (self.frame.size.width - rect.size.width)*0.5;
        rect.origin.y = (self.frame.size.height - height)*0.5;
        
        self.imageView.frame = rect;
        
        //Center text

        rect.origin.x = 0;
        rect.origin.y = self.imageView.frame.size.height + _margin;
        if (self.titleLabel.font) {
            CGSize size = [self.titleLabel.text sizeWithAttributes:@{NSFontAttributeName:self.titleLabel.font}];
            rect.size.width = size.width;
            rect.origin.x = (self.frame.size.width - rect.size.width)*0.5;
        }else{
            rect.size.width = self.frame.size.width;
        }
//        newFrame.size.height = self.frame.size.height - newFrame.origin.y;
        self.titleLabel.frame = rect;
        self.titleLabel.textAlignment = NSTextAlignmentCenter;
    }
}
-(void)setContentAlignment:(CustomButtonAlignmentType)contentAlignment{
    _contentAlignment = contentAlignment;
    [self setNeedsDisplay];
}
@end
