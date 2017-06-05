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
    //添加一个图层
    CALayer *layer = [CALayer layer];
    layer.frame = CGRectMake(100, 100, 200, 200);
    layer.backgroundColor = [UIColor blueColor].CGColor;
    layer.masksToBounds = YES;
    [self.view.layer addSublayer:layer];
    
    //设置图层的寄宿图
    UIImage *image = [UIImage imageNamed:@"tesla.jpg"];
    CALayer *cLayer = [CALayer layer];
    cLayer.frame = CGRectMake(0, 0, 200, 200);
    cLayer.contents = (__bridge id)image.CGImage;
    cLayer.contentsGravity = kCAGravityCenter;
    
    
    [layer addSublayer:cLayer];
//    [self.view.layer addSublayer:cLayer];
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
