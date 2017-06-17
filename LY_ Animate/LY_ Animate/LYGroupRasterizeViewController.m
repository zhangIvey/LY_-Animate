//
//  LYGroupRasterizeViewController.m
//  LY_ Animate
//
//  Created by yaoln on 2017/6/16.
//  Copyright © 2017年 zhangze. All rights reserved.
//

#import "LYGroupRasterizeViewController.h"

@interface LYGroupRasterizeViewController ()

@end

@implementation LYGroupRasterizeViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    self.view.backgroundColor = [UIColor grayColor];
    
    
    UILabel *leftLabel = [[UILabel alloc] initWithFrame:CGRectMake(0, 0, 150, 60)];
    leftLabel.text = @"hello world";
    leftLabel.backgroundColor = [UIColor whiteColor];

    
    UIButton *leftButton = [UIButton buttonWithType:UIButtonTypeCustom];
    leftButton.frame = CGRectMake(50, 100, 150, 60);
    leftButton.layer.cornerRadius = 20;
    leftButton.layer.masksToBounds = YES;
    leftButton.backgroundColor = [UIColor whiteColor];
    [leftButton addSubview:leftLabel];
    [self.view addSubview:leftButton];
    
    
    UILabel *rightLabel = [[UILabel alloc] initWithFrame:CGRectMake(20, 20, 100, 40)];
    rightLabel.text = @"hello world";
    rightLabel.backgroundColor = [UIColor whiteColor];
    rightLabel.alpha = 1.0f;
    
    UIButton *rightButton = [UIButton buttonWithType:UIButtonTypeCustom];
    rightButton.frame = CGRectMake(250, 100, 150, 60);
    rightButton.layer.cornerRadius = 20;
//    rightButton.layer.opacity = 0.5f;
    rightButton.alpha = 0.5f;
//    rightButton.layer.shouldRasterize = YES;
    rightButton.layer.masksToBounds = YES;
    rightButton.layer.allowsGroupOpacity = NO;
    rightButton.backgroundColor = [UIColor whiteColor];
    [rightButton addSubview:rightLabel];
    [self.view addSubview:rightButton];
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
