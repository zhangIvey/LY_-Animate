//
//  LYAffineTransformViewController.m
//  LY_ Animate
//
//  Created by 张泽 on 2017/6/18.
//  Copyright © 2017年 zhangze. All rights reserved.
//

#import "LYAffineTransformViewController.h"

@interface LYAffineTransformViewController ()

@end

@implementation LYAffineTransformViewController



#define RADIANS_TO_DEGREES(x) ((x)/M_PI*180.0)

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.view.backgroundColor = [UIColor whiteColor];
    
    
    UIImage *image = [UIImage imageNamed:@"tesla.jpg"];
    
    UIView *imgView = [[UIView alloc] initWithFrame:CGRectMake(100, 100, 200, 200)];
    imgView.backgroundColor = [UIColor grayColor];
    imgView.layer.contents = (__bridge id)image.CGImage;
    imgView.layer.contentsGravity = kCAGravityResizeAspect;
    CGAffineTransform t = CGAffineTransformMakeRotation(RADIANS_TO_DEGREES(45));
//    imgView.transform = CGAffineTransformRotate(t, M_PI_4);
    imgView.transform = t;

    
    [self.view addSubview:imgView];
    
    
    UIView *imgView2 = [[UIView alloc] initWithFrame:CGRectMake(100, 400, 200, 200)];
    imgView2.backgroundColor = [UIColor yellowColor];
    imgView2.layer.contents = (__bridge id) image.CGImage;
    imgView2.layer.contentsGravity = kCAGravityResize;
    imgView2.layer.affineTransform = t;
    
    [self.view addSubview:imgView2];
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
