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
    
    [self displayVIew];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

//使用贝塞尔曲线绘制火柴人
- (void)drawPeople
{
    
}

- (void)displayVIew
{
    //使用贝塞尔曲线保存绘制路径
    UIBezierPath *bezierPath = [[UIBezierPath alloc] init];
//    [bezierPath moveToPoint:CGPointMake(170, 180)];
    
        //添加圆（头部）1:圆心位置；2：半径；3：开始角度；4：结束角度；5：是否按照顺时针来进行绘制
    [bezierPath addArcWithCenter:CGPointMake(150, 180) radius:100.0f startAngle:0 endAngle:2*M_PI clockwise:YES];
   
        //添加竖直线（身躯）
    [bezierPath moveToPoint:CGPointMake(150, 180+100)];
    [bezierPath addLineToPoint:CGPointMake(150, 180+100+150)];
    
        //添加横线（手臂）
    [bezierPath moveToPoint:CGPointMake(50, 180+100)];
    [bezierPath addLineToPoint:CGPointMake(250, 180+100)];
    
        //添加左斜线（左腿）
    [bezierPath moveToPoint:CGPointMake(150, 180+100+150)];
    [bezierPath addLineToPoint:CGPointMake(50, 180+100+150+50)];

//        //添加右斜线（右腿）
    [bezierPath moveToPoint:CGPointMake(150, 180+100+150)];
    [bezierPath addLineToPoint:CGPointMake(250, 180+100+150+50)];
    
    
    //使用CAShapeLayer绘制路径形状
    CAShapeLayer *shapeLayer = [[CAShapeLayer alloc] init];
    shapeLayer.strokeColor = [UIColor redColor].CGColor;
    shapeLayer.fillColor = [UIColor blueColor].CGColor;
    shapeLayer.lineWidth = 15;
    shapeLayer.lineJoin = kCALineJoinRound;
    shapeLayer.lineCap = kCALineCapButt;
    shapeLayer.path = bezierPath.CGPath;
    
    //添加图层到展示层上
    [self.view.layer addSublayer:shapeLayer];
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
