//
//  LYDelayerViewController.m
//  LY_ Animate
//
//  Created by 张泽 on 2017/6/19.
//  Copyright © 2017年 zhangze. All rights reserved.
//

#import "LYDelayerViewController.h"

@interface LYDelayerViewController ()

@end

@implementation LYDelayerViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.view.backgroundColor = [UIColor whiteColor];
    
    UIView *view1 = [[UIView alloc] initWithFrame:CGRectMake(100, 100, 400, 400)];
    view1.backgroundColor = [UIColor grayColor];
    
    [self.view addSubview:view1];
    
    UIView *view2 = [[UIView alloc] initWithFrame:CGRectMake(100, 100, 200, 200)];
    view2.backgroundColor = [UIColor blueColor];
    [view1 addSubview:view2];
    
    CATransform3D transform1 = CATransform3DIdentity;
    transform1.m34 = -1.0/500.0;
    transform1 = CATransform3DRotate(transform1, M_PI_4, 0, 1, 0);
    view1.layer.transform = transform1;
    
    CATransform3D transform2 = CATransform3DIdentity;
    transform2.m34 = -1.0/500.0;
    transform2 = CATransform3DRotate(transform2, -M_PI_4, 0, 1, 0);
    
    view2.layer.transform = transform2;
    
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
