//
//  LYBackViewController.m
//  LY_ Animate
//
//  Created by 张泽 on 2017/6/19.
//  Copyright © 2017年 zhangze. All rights reserved.
//

#import "LYBackViewController.h"

@interface LYBackViewController ()

@end

@implementation LYBackViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    self.view.backgroundColor = [UIColor whiteColor];
    UIImageView *imageView = [[UIImageView alloc] initWithFrame:CGRectMake(100, 100, 200, 200)];
    imageView.backgroundColor = [UIColor grayColor];
    imageView.image = [UIImage imageNamed:@"tesla.jpg"];
    
    imageView.layer.transform = CATransform3DMakeRotation(M_PI, 0, 1, 0);
    imageView.layer.doubleSided = NO;

    
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
