//
//  LYContentsCenterViewController.m
//  LY_ Animate
//
//  Created by yaoln on 2017/6/9.
//  Copyright © 2017年 zhangze. All rights reserved.
//

#import "LYContentsCenterViewController.h"

@interface LYContentsCenterViewController ()

@end

@implementation LYContentsCenterViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.view.backgroundColor = [UIColor whiteColor];
    UIImage  *image = [UIImage imageNamed:@"geren_.png"];
    
    CGRect contentsCenterRect = CGRectMake(0.25, 0.25, 0.5, 0.5); //会拉伸的区域
    
    //横向拉伸
    CALayer *layerH = [CALayer layer];
    layerH.contents =  (__bridge id) image.CGImage;
    layerH.frame = CGRectMake(0, 60, 320, 72);
    layerH.backgroundColor = [UIColor grayColor].CGColor;
    layerH.contentsCenter = contentsCenterRect;
//    layerH.contentsGravity = kCAGravityResizeAspect;
    [self.view.layer addSublayer:layerH];
    
    
    //纵向拉伸
    CALayer *layerV = [CALayer layer];
    layerV.contents =  (__bridge id) image.CGImage;
    layerV.frame = CGRectMake(100, 150, 72, 320);
    layerV.backgroundColor = [UIColor redColor].CGColor;
    layerV.contentsCenter = contentsCenterRect;
    //    layerV.contentsGravity = kCAGravityResizeAspect;
    [self.view.layer addSublayer:layerV];
    
    
    
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
