//
//  LYGradientLayerViewController.m
//  LY_ Animate
//
//  Created by yaoln on 2017/7/7.
//  Copyright © 2017年 zhangze. All rights reserved.
//

#import "LYGradientLayerViewController.h"

@interface LYGradientLayerViewController ()

@end

@implementation LYGradientLayerViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.view.backgroundColor = [UIColor whiteColor];
    
    CAGradientLayer *gradientLayer = [CAGradientLayer layer];
    gradientLayer.frame = CGRectMake(0, 100, 200, 200);
    [self.view.layer addSublayer:gradientLayer];
    
    gradientLayer.colors = @[(__bridge id)[UIColor redColor].CGColor,(__bridge id)[UIColor yellowColor].CGColor,(__bridge id)[UIColor greenColor].CGColor];
    
    gradientLayer.locations = @[[NSNumber numberWithFloat:0.0],[NSNumber numberWithFloat:0.25],[NSNumber numberWithFloat:0.5]];
    
    gradientLayer.startPoint = CGPointMake(0, 0);
    gradientLayer.endPoint = CGPointMake(1, 1);
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
