//
//  LYConcatTransformViewController.m
//  LY_ Animate
//
//  Created by 张泽 on 2017/6/18.
//  Copyright © 2017年 zhangze. All rights reserved.
//

#import "LYConcatTransformViewController.h"

@interface LYConcatTransformViewController ()

@property(nonatomic, strong) UIView *layerView;

@end

@implementation LYConcatTransformViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    
    UIImage *image = [UIImage imageNamed:@"tesla.jpg"];
    
    self.view.backgroundColor = [UIColor whiteColor];
    _layerView = [[UIView alloc] initWithFrame:CGRectMake(0, 100, 200, 200)];
    _layerView.backgroundColor = [UIColor yellowColor];
    _layerView.layer.contents = (__bridge id) image.CGImage;
    _layerView.layer.contentsGravity = kCAGravityResizeAspect;
    
    [self.view addSubview:_layerView];
    
    
    UITapGestureRecognizer *tap = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(transform)];
    tap.numberOfTapsRequired = 1;
    tap.numberOfTouchesRequired = 1;
    [_layerView addGestureRecognizer:tap];
    
    
}


- (void)transform{
    
    CGAffineTransform transform = CGAffineTransformIdentity;
    
    transform = CGAffineTransformScale(transform, 0.5, 0.5);
    transform = CGAffineTransformRotate(transform, M_PI_4);
    transform = CGAffineTransformTranslate(transform, 200, 0);
    
    _layerView.layer.affineTransform = transform;
    
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
