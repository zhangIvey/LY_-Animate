//
//  LYzPositionViewController.m
//  LY_ Animate
//
//  Created by yaoln on 2017/6/14.
//  Copyright © 2017年 zhangze. All rights reserved.
//

#import "LYzPositionViewController.h"

@interface LYzPositionViewController ()

@end

@implementation LYzPositionViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.view.backgroundColor = [UIColor whiteColor];
    
    CALayer *greenLayer = [CALayer layer];
    greenLayer.frame = CGRectMake(100, 100, 200, 200);
    greenLayer.backgroundColor = [UIColor greenColor].CGColor;
    greenLayer.zPosition = 1;
    [self.view.layer addSublayer:greenLayer];
    
    CALayer *redLayer = [CALayer layer];
    redLayer.frame = CGRectMake(200, 200, 200, 200);
    redLayer.backgroundColor = [UIColor redColor].CGColor;
    [self.view.layer addSublayer:redLayer];
    
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
