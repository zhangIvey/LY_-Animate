//
//  LYReplicatorLayerViewController.m
//  LY_ Animate
//
//  Created by yaoln on 2017/7/11.
//  Copyright © 2017年 zhangze. All rights reserved.
//

#import "LYReplicatorLayerViewController.h"

@interface LYReplicatorLayerViewController ()

@property(nonatomic, strong) UIView *containerView;

@end



@implementation LYReplicatorLayerViewController


- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor whiteColor];
    
    //创建一个视图用来存放重复图层
    _containerView = [[UIView alloc] init];
    _containerView.frame = self.view.bounds;
    [self.view addSubview:_containerView];
    
    //创建重复图层
    CAReplicatorLayer *replicatorLayer = [CAReplicatorLayer layer];
    replicatorLayer.frame = _containerView.frame;
    [_containerView.layer addSublayer:replicatorLayer];
    
    //设置重复图层要进行元素图层重复的次数
    replicatorLayer.instanceCount = 10;
    
    //设置重复图层中元素图层的变换
    CATransform3D transform = CATransform3DIdentity;
    transform = CATransform3DTranslate(transform, 0, 20, 0); //沿Y轴下移20像素
    transform = CATransform3DRotate(transform, M_PI_2/5.0, 0, 0, 1); //绕Z轴进行旋转
    transform = CATransform3DTranslate(transform, 0, -20, 0); //沿Y轴上移20像素
    
    replicatorLayer.instanceTransform = transform; //将变换赋值给元素图层
    
    //设置元素图层的颜色变化
    replicatorLayer.instanceGreenOffset = -0.1;
    replicatorLayer.instanceBlueOffset = -0.1;
    
    //创建元素图层放到重复图层内部
    CALayer *layer = [CALayer layer];
    layer.frame = CGRectMake(100, 100, 100, 100);
    layer.backgroundColor = [UIColor greenColor].CGColor;
    [replicatorLayer addSublayer:layer];
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
