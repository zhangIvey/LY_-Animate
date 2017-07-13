//
//  LYReplicatorLayerViewController.m
//  LY_ Animate
//
//  Created by yaoln on 2017/7/11.
//  Copyright © 2017年 zhangze. All rights reserved.
//

#import "LYReplicatorLayerViewController.h"

@interface LYReplicatorLayerViewController ()

@property(nonatomic, strong) UIView *containerView;

@end



@implementation LYReplicatorLayerViewController


- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor whiteColor];
    _containerView = [[UIView alloc] init];
    _containerView.frame = self.view.bounds;
    [self.view addSubview:_containerView];
    
    CAReplicatorLayer *replicatorLayer = [CAReplicatorLayer layer];
    replicatorLayer.frame = _containerView.frame;
    [_containerView.layer addSublayer:replicatorLayer];
    
    replicatorLayer.instanceCount = 10;
    
    CATransform3D transform = CATransform3DIdentity;
    
    
    
    replicatorLayer.instanceTransform = transform;
    
    
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
