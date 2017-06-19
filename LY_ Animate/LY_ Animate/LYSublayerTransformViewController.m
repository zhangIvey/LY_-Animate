//
//  LYSublayerTransformViewController.m
//  LY_ Animate
//
//  Created by yaoln on 2017/6/19.
//  Copyright © 2017年 zhangze. All rights reserved.
//

#import "LYSublayerTransformViewController.h"

@interface LYSublayerTransformViewController ()

@end

@implementation LYSublayerTransformViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.view.backgroundColor = [UIColor whiteColor];
    UIImageView *imgview1 = [[UIImageView alloc] initWithFrame:CGRectMake(0, 0, 200, 200)];
    imgview1.image = [UIImage imageNamed:@"tesla.jpg"];
    
    
    
    UIImageView *imgview2 = [[UIImageView alloc] initWithFrame:CGRectMake(200, 20, 200, 200)];
    imgview2.image = imgview1.image;
    
    UIView *containtsview = [[UIView alloc] initWithFrame:CGRectMake(0,200,  [UIScreen mainScreen].bounds.size.width,  [UIScreen mainScreen].bounds.size.width)];
    containtsview.backgroundColor = [UIColor grayColor];

    [containtsview addSubview:imgview1];
    [containtsview addSubview:imgview2];
    
    
    //应用sublayerTransform
    
    CATransform3D transformv = CATransform3DIdentity;
    transformv.m34 = -1.0/500.0;

    
    CATransform3D transform1 = CATransform3DMakeRotation(M_PI_4, 0, 1, 0);
    CATransform3D transform2 = CATransform3DMakeRotation(-M_PI_4, 0, 1, 0);
    imgview2.layer.transform = transform2;
    imgview1.layer.transform = transform1;
    
    containtsview.layer.sublayerTransform = transformv;
    

    [self.view addSubview:containtsview];
    
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
