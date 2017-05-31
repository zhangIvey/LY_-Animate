//
//  LYCAShapeDisplayViewController.m
//  LY_ Animate
//
//  Created by yaoln on 2017/5/25.
//  Copyright © 2017年 zhangze. All rights reserved.
//

#import "LYCAShapeDisplayViewController.h"

@interface LYCAShapeDisplayViewController ()

@property(nonatomic, strong) CADisplayLink *displayLink;

@end

@implementation LYCAShapeDisplayViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor whiteColor];
    // Do any additional setup after loading the view.
    
//    _displayLink = [CADisplayLink displayLinkWithTarget:self selector:@selector(displayVIew)];
//    [_displayLink addToRunLoop:[NSRunLoop mainRunLoop] forMode:NSRunLoopCommonModes];
    
    [self drawPeople];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

//使用贝塞尔曲线绘制火柴人
- (void)drawPeople
{
    //创建 People 的绘制路径 使用贝塞尔曲线进行设置
    UIBezierPath *bezierPath = [[UIBezierPath alloc] init];
    
        //绘制圆形（头部）
//    [bezierPath moveToPoint:CGPointMake(160, 180)];
    [bezierPath addArcWithCenter:CGPointMake(160, 180) radius:100 startAngle:0 endAngle:2 * M_PI clockwise:YES];
    
        //绘制胳膊 （水平直线）
    [bezierPath moveToPoint:CGPointMake(60, 180 + 100)];
    [bezierPath addLineToPoint:CGPointMake(260, 180 + 100)];
    
        //绘制躯干 （垂直直线）
    [bezierPath moveToPoint:CGPointMake(180, 180 + 100)];
    [bezierPath addLineToPoint:CGPointMake(180, 180 + 100 + 100)];
    
    
        //绘制左腿 （向左的斜线）
    [bezierPath moveToPoint:CGPointMake(180, 180 + 100 + 100)];
    [bezierPath addLineToPoint:CGPointMake(130, 180 + 100 + 100 + 100)];
        //绘制右腿 （向右的斜线）
    
    [bezierPath moveToPoint:CGPointMake(180, 180 + 100 + 100)];
    [bezierPath addLineToPoint:CGPointMake(230, 180 + 100 + 100 + 100)];
    
    //按照创建好的路径绘制
    CAShapeLayer *shapeLayer = [[CAShapeLayer alloc] init];
    [shapeLayer setPath:bezierPath.CGPath];
    [shapeLayer setFillColor:[UIColor blueColor].CGColor]; //在闭合区域，需要填充的颜色，
    
    [shapeLayer setStrokeColor:[UIColor redColor].CGColor];
    
    [shapeLayer setBorderWidth:10];
    [shapeLayer setBorderColor:[UIColor yellowColor].CGColor];
    [shapeLayer setShadowColor:[UIColor grayColor].CGColor];
    [shapeLayer setBackgroundColor:[UIColor purpleColor].CGColor];
    [shapeLayer setLineWidth:20];
    [shapeLayer setLineCap:@"round"]; //设置一段路径的开始和结束
    [shapeLayer setLineJoin:@"bevel"];
//    [shapeLayer setShadowPath:<#(CGPathRef _Nullable)#>]
    
    //将按照路径绘制好的图层添加到 view 上
    [self.view.layer addSublayer:shapeLayer];
    
}

- (void)displayVIew
{
    
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
