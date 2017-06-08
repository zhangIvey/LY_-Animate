//
//  LYLayerViewController.m
//  LY_ Animate
//
//  Created by yaoln on 2017/6/5.
//  Copyright © 2017年 zhangze. All rights reserved.
//

#import "LYLayerViewController.h"

@interface LYLayerViewController ()

@end

@implementation LYLayerViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    // Do any additional setup after loading the view.
    
    
    self.view.backgroundColor = [UIColor grayColor];
    
    UIView *layerView = [[UIView alloc] initWithFrame: CGRectMake(100, 100, 200, 200)];
    layerView.backgroundColor = [UIColor whiteColor];
    [self.view addSubview:layerView];
    
    UIImage *image = [UIImage imageNamed:@"tesla.jpg"];
    layerView.layer.contents = (__bridge id)image.CGImage;
    
    layerView.layer.contentsGravity = kCAGravityResizeAspect;
//    layerView.layer.contentsScale = image.scale;
    layerView.layer.masksToBounds = YES;
    layerView.layer.contentsScale = [UIScreen mainScreen].scale;
    layerView.layer.contentsRect = CGRectMake(0, 0, 1.3, 1.3);
    
    
    //添加一个图层
    /*
    CALayer *layer = [CALayer layer];
    layer.frame = CGRectMake(50, 50, 100, 100);
    layer.backgroundColor = [UIColor blueColor].CGColor;
    [layerView.layer addSublayer:layer];
    */
    
    /*
   
    
    //设置图层的寄宿图
    UIImage *image = [UIImage imageNamed:@"tesla.jpg"];
    CALayer *cLayer = [CALayer layer];
    cLayer.frame = CGRectMake(0, 0, 200, 200);
    cLayer.contents = (__bridge id)image.CGImage;
    
    cLayer.contentsGravity = kCAGravityCenter;
    
//    cLayer.contentsScale = image.scale;
    
    [layer addSublayer:cLayer];
    NSLog(@"clayer.contentsScale = %f",cLayer.contentsScale);
    cLayer.contentsScale = [[UIScreen mainScreen] scale];
    NSLog(@"reset = clayer.contentsScale = %f",cLayer.contentsScale);
    
//    [self.view.layer addSublayer:cLayer];
     */
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
