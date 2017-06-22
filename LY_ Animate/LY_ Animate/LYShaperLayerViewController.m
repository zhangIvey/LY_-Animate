//
//  LYShaperLayerViewController.m
//  LY_ Animate
//
//  Created by 张泽 on 2017/6/20.
//  Copyright © 2017年 zhangze. All rights reserved.
//

#import "LYShaperLayerViewController.h"

@interface LYShaperLayerViewController ()

@end

@implementation LYShaperLayerViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    self.view.backgroundColor = [UIColor whiteColor];
    CALayer *personLayer = [self getPerson];

    CALayer *rectLayer = [self getRect];
    
    
    [self.view.layer addSublayer:rectLayer];
    [self.view.layer addSublayer:personLayer];
    
    
}

- (CALayer *)getRect
{
    UIBezierPath *path = [UIBezierPath bezierPathWithRoundedRect:CGRectMake(100, 100, 300, 300) byRoundingCorners:UIRectCornerTopLeft | UIRectCornerTopRight | UIRectCornerBottomLeft cornerRadii:CGSizeMake(10, 10)];
    CAShapeLayer *rectShaperLayer = [[CAShapeLayer alloc] init];
    rectShaperLayer.path = path.CGPath;
    rectShaperLayer.strokeColor = [UIColor blueColor].CGColor;
    rectShaperLayer.fillColor = [UIColor yellowColor].CGColor;
    rectShaperLayer.lineWidth = 5;
    return rectShaperLayer;
}

- (CALayer *)getPerson
{
    //使用贝塞尔曲线绘制形状
    UIBezierPath *path = [[UIBezierPath alloc] init];

    int center_x = [UIScreen mainScreen].bounds.size.width/2;
    //头
    [path addArcWithCenter:CGPointMake(center_x, 200) radius:100 startAngle:0 endAngle:2*M_PI clockwise:YES];

    //躯干
    [path moveToPoint:CGPointMake(center_x, 300)];
    [path addLineToPoint:CGPointMake(center_x, 500)];
    
    //手臂
    [path moveToPoint:CGPointMake(center_x-100, 400)];
    [path addLineToPoint:CGPointMake(center_x + 100, 400)];
    
    //腿
    [path moveToPoint:CGPointMake(center_x, 500)];
    [path addLineToPoint:CGPointMake(center_x-100, 700)];
    
    [path moveToPoint:CGPointMake(center_x, 500)];
    [path addLineToPoint:CGPointMake(center_x+100, 700)];
    
    CAShapeLayer *shaperLayer = [[CAShapeLayer alloc] init];
    shaperLayer.path = path.CGPath;
    shaperLayer.lineWidth = 5;
    shaperLayer.fillColor = [UIColor purpleColor].CGColor;
    shaperLayer.lineCap = kCALineCapRound;
    shaperLayer.lineJoin = kCALineJoinRound;
    shaperLayer.strokeColor = [UIColor redColor].CGColor;
    shaperLayer.fillColor = [UIColor whiteColor].CGColor;
    
    
    return shaperLayer;
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
