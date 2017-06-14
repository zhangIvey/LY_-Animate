//
//  LYLayerViewController.m
//  LY_ Animate
//
//  Created by yaoln on 2017/6/5.
//  Copyright © 2017年 zhangze. All rights reserved.
//

#import "LYLayerViewController.h"

@interface LYLayerViewController ()

@property(nonatomic, strong) UIView *layerView;
@property(nonatomic, strong) CALayer *layer;

@end

@implementation LYLayerViewController


- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event
{
    //containsPoint
    /*
    CGPoint point = [[touches anyObject] locationInView:self.view];
    point = [self.layerView.layer convertPoint:point fromLayer:self.view.layer];
    if ([self.layerView.layer containsPoint:point]) {
        NSLog(@"白色区域");
        CGPoint point2 = [self.layer convertPoint:point fromLayer:self.layerView.layer];
        if ([self.layer containsPoint:point2]) {
            NSLog(@"蓝色区域");
        }
    }else{
        NSLog(@"空白区域");
    }
     */
    
    //hitTest
    CGPoint point = [[touches anyObject] locationInView:self.view];
    CALayer *layerHit = [self.view.layer hitTest:point];
    if (layerHit == self.view.layer) {
        NSLog(@"空白区域");
    }else if (layerHit == self.layer){
        NSLog(@"白色区域 + 蓝色区域");
    }else if (layerHit == self.layerView.layer){
        NSLog(@"白色区域");
    }
    
}



- (void)viewDidLoad {
    [super viewDidLoad];
    
    // Do any additional setup after loading the view.
    
    
    self.view.backgroundColor = [UIColor grayColor];
    
    _layerView = [[UIView alloc] initWithFrame: CGRectMake(100, 100, 200, 200)];
    _layerView.backgroundColor = [UIColor whiteColor];
    [self.view addSubview:_layerView];
   
    /*
    UIImage *image = [UIImage imageNamed:@"tesla.jpg"];
    layerView.layer.contents = (__bridge id)image.CGImage;
    
    layerView.layer.contentsGravity = kCAGravityResizeAspect;
//    layerView.layer.contentsScale = image.scale;
    layerView.layer.masksToBounds = YES;
    layerView.layer.contentsScale = [UIScreen mainScreen].scale;
    layerView.layer.contentsRect = CGRectMake(0, 0, 1.3, 1.3);
    */
    
    //添加一个图层
    
    _layer = [CALayer layer];
    _layer.frame = CGRectMake(50, 50, 100, 100);
    _layer.backgroundColor = [UIColor blueColor].CGColor;
    [_layerView.layer addSublayer:_layer];
    
    
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
