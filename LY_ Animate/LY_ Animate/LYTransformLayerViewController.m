//
//  LYTransformLayerViewController.m
//  LY_ Animate
//
//  Created by yaoln on 2017/7/6.
//  Copyright © 2017年 zhangze. All rights reserved.
//

#import "LYTransformLayerViewController.h"

@interface LYTransformLayerViewController ()

@property(nonatomic, strong) UIView *containerView;

@end

@implementation LYTransformLayerViewController


//设置立方面
- (CALayer *)faceWithTransform:(CATransform3D )transform
{
    //图层初始化
    CALayer *face = [CALayer layer];
    face.frame = CGRectMake(-50, -50, 100, 100);
    
    //设置图层颜色
    CGFloat red = (rand()/(double)INT_MAX);
    CGFloat green = (rand()/(double)INT_MAX);
    CGFloat blue = (rand()/(double)INT_MAX);
    
    face.backgroundColor = [UIColor colorWithRed:red green:green blue:blue alpha:1].CGColor;
    face.transform = transform;

    return face;
}

//设置立方体
- (CALayer *)cubeWithTransform:(CATransform3D )transform
{
    CATransformLayer *cube = [CATransformLayer layer];
    
    //add cube face 1
    CATransform3D t1 = CATransform3DMakeTranslation(0, 0, 50);
    [cube addSublayer:[self faceWithTransform:t1]];
    
    //add cube face 2
    t1 = CATransform3DMakeTranslation(50, 0, 0);
    t1 = CATransform3DRotate(t1, M_PI_2, 0, 1, 0);
    [cube addSublayer:[self faceWithTransform:t1]];
    
    //add cube face 3
    t1 = CATransform3DMakeTranslation(0, -50, 0);
    t1 = CATransform3DRotate(t1, M_PI_2, 1, 0, 0);
    [cube addSublayer:[self faceWithTransform:t1]];
    
    // face 4
    t1 = CATransform3DMakeTranslation(0, 50, 0);
    t1 = CATransform3DRotate(t1, -M_PI_2, 1, 0, 0);
    [cube addSublayer:[self faceWithTransform:t1]];
    
    //add cube face 5
    t1 = CATransform3DMakeTranslation(-50, 0, 0);
    t1 = CATransform3DRotate(t1, -M_PI_2, 0, 1, 0);
    [cube addSublayer:[self faceWithTransform:t1]];
    
    //add cube face 6
    t1 = CATransform3DMakeTranslation(0, 0, -50);
    t1 = CATransform3DRotate(t1, M_PI, 0, 1, 0);
    [cube addSublayer:[self faceWithTransform:t1]];
    
    //center the cube layer within the container
    CGSize containerSize = self.containerView.bounds.size;
    cube.position = CGPointMake(containerSize.width / 2.0, containerSize.height / 2.0);
    
    //apply the transform and return
    cube.transform = transform;
    return cube;
    
}

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor whiteColor];
    
    _containerView = [[UIView alloc] initWithFrame:CGRectMake(0, 100, [UIScreen mainScreen].bounds.size.width, [UIScreen mainScreen].bounds.size.height - 100)];
    _containerView.backgroundColor = [UIColor grayColor];
    [self.view addSubview:_containerView];
    
    //创建3D变换
    CATransform3D transform3D = CATransform3DIdentity;
    transform3D.m34 = -1.0/500.0; //透视效果
    _containerView.layer.sublayerTransform = transform3D;
    
    CATransform3D c1t = CATransform3DIdentity;
    c1t = CATransform3DTranslate(c1t, -100, 0, 0);
    CALayer *cube1 = [self cubeWithTransform:c1t];
    [_containerView.layer addSublayer:cube1];
    
    CATransform3D c2t = CATransform3DIdentity;
    c2t = CATransform3DTranslate(c2t, 100, 0, 0);
    c2t = CATransform3DRotate(c2t, -M_PI_4, 1, 0, 0);
    c2t = CATransform3DRotate(c2t, -M_PI_4, 0, 1, 0);
    CALayer *cube2 = [self cubeWithTransform:c2t];
    [self.containerView.layer addSublayer:cube2];
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
