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
    self.view.backgroundColor = [UIColor yellowColor];
    
    //添加一个圆角矩形
    CGMutablePathRef pathRef = CGPathCreateMutable();
    CGPathAddRoundedRect(pathRef, NULL, CGRectMake(50, 50, 300, 300), 50, 50);
    
    
    
    UIView *whiteView = [[UIView alloc] initWithFrame:CGRectMake(100, 100, 200, 200)];
    whiteView.backgroundColor = [UIColor whiteColor];
    whiteView.layer.cornerRadius = 20;
//    whiteView.layer.masksToBounds = YES;
    whiteView.layer.borderColor = [UIColor blackColor].CGColor;
    whiteView.layer.borderWidth = 10.0f;
    whiteView.layer.shadowRadius = 10;
    whiteView.layer.shadowOffset = CGSizeMake(0, -5);
    whiteView.layer.shadowOpacity = 0.7;
    whiteView.layer.shadowPath = pathRef;
    [self.view addSubview:whiteView];
    
    
    UIView *redView = [[UIView alloc] initWithFrame:CGRectMake(100, 100, 200, 200)];
    redView.backgroundColor = [UIColor redColor];
    [whiteView addSubview:redView];
    
    /*
    //一个额外的视图，用来包裹裁剪后的视图
    UIView *bigView = [[UIView alloc] initWithFrame:whiteView.frame];
    [bigView addSubview:whiteView];
    bigView.layer.shadowRadius = 10;
    bigView.layer.shadowOffset = CGSizeMake(0, -5);
    bigView.layer.shadowOpacity = 0.7;
    
    [self.view addSubview:bigView];
     */
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
