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
