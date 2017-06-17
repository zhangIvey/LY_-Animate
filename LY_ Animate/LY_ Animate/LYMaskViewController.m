//
//  LYMaskViewController.m
//  LY_ Animate
//
//  Created by yaoln on 2017/6/15.
//  Copyright © 2017年 zhangze. All rights reserved.
//

#import "LYMaskViewController.h"

@interface LYMaskViewController ()

@end

@implementation LYMaskViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.view.backgroundColor = [UIColor whiteColor];
    
    UIImageView *imageView = [[UIImageView alloc] initWithFrame:CGRectMake(100, 100, 200, 200)];
    imageView.image = [UIImage imageNamed:@"tesla.jpg"];
    
    CALayer *maskLayer = [CALayer layer];
    maskLayer.frame = CGRectMake(50, 50, 100, 100);
    maskLayer.contents = (__bridge id)[UIImage imageNamed:@"badgMessage.png"].CGImage;
    
    imageView.layer.mask = maskLayer;
    
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
