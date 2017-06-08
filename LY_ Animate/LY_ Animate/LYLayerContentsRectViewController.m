//
//  LYLayerContentsRectViewController.m
//  LY_ Animate
//
//  Created by yaoln on 2017/6/8.
//  Copyright © 2017年 zhangze. All rights reserved.
//

#import "LYLayerContentsRectViewController.h"

@interface LYLayerContentsRectViewController ()

@end

@implementation LYLayerContentsRectViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.view.backgroundColor = [UIColor whiteColor];
    //载入图片
    UIImage *tesleImg = [UIImage imageNamed:@"tesla.jpg"];///600 × 450
    
    //存放6个图片的图层
    UIView *view1 = [[UIView alloc] initWithFrame:CGRectMake(0, 0, 200, 200)];
    [self imageSpriteOnLayer:view1.layer withRect:CGRectMake(0, 0, 0.5, 0.5) withImage:tesleImg];
    
    UIView *view2 = [[UIView alloc] initWithFrame:CGRectMake(120, 150, 200, 200)];
    [self imageSpriteOnLayer:view2.layer withRect:CGRectMake(0.5, 0.5, 1, 1) withImage:tesleImg];
    
    UIView *view3 = [[UIView alloc] initWithFrame:CGRectMake(0, 260, 200, 200)];
    [self imageSpriteOnLayer:view3.layer withRect:CGRectMake(0.5, 0.5, 0.5, 0.5) withImage:tesleImg];
    
    UIView *view4 = [[UIView alloc] initWithFrame:CGRectMake(120, 500, 200, 200)];
    [self imageSpriteOnLayer:view4.layer withRect:CGRectMake(0.5, 0.5, 1, 1) withImage:tesleImg];

    
    [self.view addSubview:view1];
    [self.view addSubview:view2];
    [self.view addSubview:view3];
    [self.view addSubview:view4];
    
}

- (void)imageSpriteOnLayer:(CALayer *)layer withRect:(CGRect) rect withImage:(UIImage *)image
{
    layer.contents = (__bridge id) image.CGImage;
    layer.contentsRect = rect;
    layer.contentsGravity = kCAGravityResizeAspect;
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
