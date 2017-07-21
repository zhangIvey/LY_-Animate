//
//  LYReflection_ReplicatorLayer_ViewController.m
//  LY_ Animate
//
//  Created by yaoln on 2017/7/18.
//  Copyright © 2017年 zhangze. All rights reserved.
//

#import "LYReflection_ReplicatorLayer_ViewController.h"
#import "ReflectionView.h"

@interface LYReflection_ReplicatorLayer_ViewController ()

@end

@implementation LYReflection_ReplicatorLayer_ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.view.backgroundColor = [UIColor whiteColor];
    
    ReflectionView *reflectionView = [[ReflectionView alloc] initWithFrame:CGRectMake(100, 100, 200, 200)];
    reflectionView.backgroundColor = [UIColor grayColor];
    
    UIImageView *imageView = [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"tesla.png"]];
    imageView.frame = reflectionView.bounds;
    [reflectionView addSubview:imageView];
    
    [self.view addSubview:reflectionView];
    
    
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
