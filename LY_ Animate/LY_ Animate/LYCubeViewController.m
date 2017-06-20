//
//  LYCubeViewController.m
//  LY_ Animate
//
//  Created by yaoln on 2017/6/20.
//  Copyright © 2017年 zhangze. All rights reserved.
//

#import "LYCubeViewController.h"
#import <GLKit/GLKit.h>

#define LIGHT_DIRECTION 0, 1, -0.5
#define AMBIENT_LIGHT 0.5

@interface LYCubeViewController ()

@property(nonatomic, strong) NSMutableArray *viewArray;
@property(nonatomic, strong) UIView *containerView;

@end



@implementation LYCubeViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.view.backgroundColor = [UIColor grayColor];
    //绘制六个视图
    UIView *view1 = [[UIView alloc] initWithFrame:CGRectMake(0, 60, 100, 100)];
    view1.backgroundColor = [UIColor whiteColor];
    UIView *view2 = [[UIView alloc] initWithFrame:CGRectMake(150, 60, 100, 100)];
    view2.backgroundColor = [UIColor whiteColor];
    UIView *view3 = [[UIView alloc] initWithFrame:CGRectMake(0, 200, 100, 100)];
    view3.backgroundColor = [UIColor whiteColor];
    UIView *view4 = [[UIView alloc] initWithFrame:CGRectMake(150, 200, 100, 100)];
    view4.backgroundColor = [UIColor whiteColor];
    UIView *view5 = [[UIView alloc] initWithFrame:CGRectMake(0, 350, 100, 100)];
    view5.backgroundColor = [UIColor whiteColor];
    UIView *view6 = [[UIView alloc] initWithFrame:CGRectMake(150, 350, 100, 100)];
    view6.backgroundColor = [UIColor whiteColor];
    
    view1.userInteractionEnabled = NO;
    view2.userInteractionEnabled = NO;
    view3.userInteractionEnabled = NO;
    view4.userInteractionEnabled = NO;
    
    UILabel *label1 = [[UILabel alloc] initWithFrame:CGRectMake(20, 20, 60, 60)];
    label1.text = @"1";
    label1.textAlignment = NSTextAlignmentCenter;
    label1.textColor = [UIColor blackColor];
    UILabel *label2 = [[UILabel alloc] initWithFrame:CGRectMake(20, 20, 60, 60)];
    label2.text = @"2";
    label2.textAlignment = NSTextAlignmentCenter;
    label2.textColor = [UIColor redColor];
    UILabel *label3 = [[UILabel alloc] initWithFrame:CGRectMake(20, 20, 60, 60)];
    label3.text = @"3";
    label3.textAlignment = NSTextAlignmentCenter;
    label3.textColor = [UIColor blueColor];
    UILabel *label4 = [[UILabel alloc] initWithFrame:CGRectMake(20, 20, 60, 60)];
    label4.text = @"4";
    label4.textAlignment = NSTextAlignmentCenter;
    label4.textColor = [UIColor yellowColor];

    UIButton *button = [UIButton buttonWithType:UIButtonTypeCustom];
    button.frame = CGRectMake(20, 20, 60, 60);
    [button setTitle:@"5" forState:UIControlStateNormal];
    button.titleLabel.textAlignment = NSTextAlignmentCenter;
    [button setTitleColor:[UIColor greenColor] forState:UIControlStateNormal];
    [button setBackgroundColor:[UIColor blueColor]];
    [button addTarget:self action:@selector(doSomething) forControlEvents:UIControlEventTouchUpInside];
    
    UILabel *label6 = [[UILabel alloc] initWithFrame:CGRectMake(20, 20, 60, 60)];
    label6.text = @"6";
    label6.textAlignment = NSTextAlignmentCenter;
    label6.textColor = [UIColor orangeColor];
    
    [view1 addSubview:label1];
    [view2 addSubview:label2];
    [view3 addSubview:label3];
    [view4 addSubview:label4];
    [view5 addSubview:button];
    [view6 addSubview:label6];
    
    _viewArray = [[NSMutableArray alloc] init];
    [_viewArray addObject:view1];
    [_viewArray addObject:view2];
    [_viewArray addObject:view3];
    [_viewArray addObject:view4];
    [_viewArray addObject:view5];
    [_viewArray addObject:view6];
    
    
    self.containerView = [[UIView alloc] initWithFrame:[UIScreen mainScreen].bounds];
    
    [self.view addSubview:self.containerView];
    [self cubeInit];
}

- (void)doSomething
{
    NSLog(@"固体视图响应点击事件");
}

- (void)cubeInit
{
    //折合立方体
    CATransform3D perspective = CATransform3DIdentity;
    perspective.m34 = -1.0/500.0;
    perspective = CATransform3DRotate(perspective, -M_PI_4, 1, 0, 0);
    perspective = CATransform3DRotate(perspective, -M_PI_4, 0, 1, 0);
    self.containerView.layer.sublayerTransform = perspective;  //为所有的子图层设置透视变换

    
    //第一面视图
    CATransform3D transform = CATransform3DMakeTranslation( 0, 0, 50);//特别注意变换是一个崭新的变换对象
    [self addFace:0 withTransform:transform];
    //第二面视图
    transform = CATransform3DMakeTranslation(50, 0, 0); //特别注意变换是一个崭新的变换对象
    transform = CATransform3DRotate(transform, M_PI_2, 0, 1, 0);
    [self addFace:1 withTransform:transform];
    //第三面视图
    transform = CATransform3DMakeTranslation(-50, 0, 0);//特别注意变换是一个崭新的变换对象
    transform = CATransform3DRotate(transform, -M_PI_2, 0, 1 ,0);
    [self addFace:2 withTransform:transform];
    //第四面视图
    transform = CATransform3DMakeTranslation( 0, 50, 0);//特别注意变换是一个崭新的变换对象
    transform = CATransform3DRotate(transform, -M_PI_2, 1, 0, 0);
    [self addFace:3 withTransform:transform];
    
    //第五面视图
    transform = CATransform3DMakeTranslation( 0, -50, 0);//特别注意变换是一个崭新的变换对象
    transform = CATransform3DRotate(transform, M_PI_2, 1, 0, 0);
    [self addFace:4 withTransform:transform];
    
    //第六面视图
    transform = CATransform3DMakeTranslation( 0, 0, -50);//特别注意变换是一个崭新的变换对象
    transform = CATransform3DRotate(transform, M_PI, 1, 0, 0);
    [self addFace:5 withTransform:transform];
}

//添加光线效果
- (void)applyLightingToFace:(CALayer *)face
{
    //add lighting layer
    CALayer *layer = [CALayer layer];
    layer.frame = face.bounds;
    [face addSublayer:layer];
    //convert the face transform to matrix
    //(GLKMatrix4 has the same structure as CATransform3D)
    //译者注：GLKMatrix4和CATransform3D内存结构一致，但坐标类型有长度区别，所以理论上应该做一次float到CGFloat的转换，感谢[@zihuyishi](https://github.com/zihuyishi)同学~
    CATransform3D transform = face.transform;
    GLKMatrix4 matrix4 = *(GLKMatrix4 *)&transform;
    GLKMatrix3 matrix3 = GLKMatrix4GetMatrix3(matrix4);
    //get face normal
    GLKVector3 normal = GLKVector3Make(0, 0, 1);
    normal = GLKMatrix3MultiplyVector3(matrix3, normal);
    normal = GLKVector3Normalize(normal);
    //get dot product with light direction
    GLKVector3 light = GLKVector3Normalize(GLKVector3Make(LIGHT_DIRECTION));
    float dotProduct = GLKVector3DotProduct(light, normal);
    //set lighting layer opacity
    CGFloat shadow = 1 + dotProduct - AMBIENT_LIGHT;
    UIColor *color = [UIColor colorWithWhite:0 alpha:shadow];
    layer.backgroundColor = color.CGColor;
}


- (void)addFace:(NSInteger)index withTransform:(CATransform3D)transform
{
    //get the face view and add it to the container
    UIView *face = _viewArray[index];
    [self.containerView addSubview:face];
    //因为有透视效果，需要先设置视图的中心点是父视图的重点
    CGSize containerSize = self.containerView.bounds.size;
    face.center = CGPointMake(containerSize.width / 2.0, containerSize.height / 2.0);
    // 应用变换
    face.layer.transform = transform;
     [self applyLightingToFace:face.layer];
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
