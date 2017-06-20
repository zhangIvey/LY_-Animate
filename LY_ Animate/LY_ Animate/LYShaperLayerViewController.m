//
//  LYShaperLayerViewController.m
//  LY_ Animate
//
//  Created by 张泽 on 2017/6/20.
//  Copyright © 2017年 zhangze. All rights reserved.
//

#import "LYShaperLayerViewController.h"

@interface LYShaperLayerViewController ()

@end

@implementation LYShaperLayerViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    self.view.backgroundColor = [UIColor whiteColor];
    [self initPerson];

    
}

- (void)initPerson
{
    //使用贝塞尔曲线绘制形状
    
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
