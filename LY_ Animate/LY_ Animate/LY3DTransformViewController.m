//
//  LY3DTransformViewController.m
//  LY_ Animate
//
//  Created by yaoln on 2017/6/19.
//  Copyright © 2017年 zhangze. All rights reserved.
//

#import "LY3DTransformViewController.h"

@interface LY3DTransformViewController ()

@end

@implementation LY3DTransformViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.view.backgroundColor = [UIColor whiteColor];
    
    
    CATransform3D transform3D = CATransform3DIdentity;
    
    UIImageView *imageView = [[UIImageView alloc] initWithFrame:CGRectMake(100, 100, 100, 100)];
    transform3D.m34 = -1.0/500;
    transform3D = CATransform3DRotate(transform3D, M_PI_4, 0, 1, 0);
    imageView.layer.transform = transform3D;
    imageView.image = [UIImage imageNamed:@"tesla.jpg"];
    [self.view addSubview:imageView];
    
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
