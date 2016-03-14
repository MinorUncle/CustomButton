//
//  ViewController.m
//  CustomButton
//
//  Created by tongguan on 16/3/14.
//  Copyright © 2016年 MinorUncle. All rights reserved.
//

#import "ViewController.h"
#import "CustomButton.h"
@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    CustomButton* btn = [[CustomButton alloc]init];
    btn.backgroundColor = [UIColor redColor];
    [btn setTitle:@"你好" forState:UIControlStateNormal];
    [btn setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
    [btn setImage:[UIImage imageNamed:@"headIcon"] forState:UIControlStateNormal];
    
    btn.frame = (CGRect){80,200,200,100};
    [self.view addSubview:btn];
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
