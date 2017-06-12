//
//  CustomDrawingViewController.m
//  LY_ Animate
//
//  Created by yaoln on 2017/6/12.
//  Copyright © 2017年 zhangze. All rights reserved.
//

#import "CustomDrawingViewController.h"

@interface CustomDrawingViewController ()<CALayerDelegate>

@end

@implementation CustomDrawingViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor whiteColor];
    
    //创建一个layer
    CALayer *layer = [CALayer layer];
    layer.frame = CGRectMake(100, 100, 200, 200);
    layer.backgroundColor = [UIColor blueColor].CGColor;
    
    //ensure that layer backing image uses correct scale
    layer.contentsScale = [UIScreen mainScreen].scale;
    [self.view.layer addSublayer:layer];
    
    layer.delegate = self;

    //重新绘制
    [layer display];
    
}

- (void)drawLayer:(CALayer *)layer inContext:(CGContextRef)ctx
{
    CGContextSetLineWidth(ctx, 10.f);
    CGContextSetStrokeColorWithColor(ctx,[UIColor redColor].CGColor);
    CGContextStrokeEllipseInRect(ctx, layer.bounds);
    
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
