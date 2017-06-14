//
//  LYRoundViewController.m
//  LY_ Animate
//
//  Created by yaoln on 2017/6/14.
//  Copyright © 2017年 zhangze. All rights reserved.
//

#import "LYRoundViewController.h"

@interface LYRoundViewController ()

@end

@implementation LYRoundViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.view.backgroundColor = [UIColor grayColor];
    
    
    UIView *whiteView = [[UIView alloc] initWithFrame:CGRectMake(100, 100, 200, 200)];
    whiteView.backgroundColor = [UIColor whiteColor];
    whiteView.layer.cornerRadius = 20;
//    whiteView.layer.masksToBounds = YES;
    whiteView.layer.borderColor = [UIColor blackColor].CGColor;
    whiteView.layer.borderWidth = 10.0f;
    [self.view addSubview:whiteView];
    
    
    UIView *redView = [[UIView alloc] initWithFrame:CGRectMake(100, 100, 200, 200)];
    redView.backgroundColor = [UIColor redColor];
    [whiteView addSubview:redView];
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
