//
//  LYCustomLabelViewController.m
//  LY_ Animate
//
//  Created by yaoln on 2017/7/5.
//  Copyright © 2017年 zhangze. All rights reserved.
//

#import "LYCustomLabelViewController.h"
#import "LayerLabel.h"

@interface LYCustomLabelViewController ()

@end

@implementation LYCustomLabelViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor whiteColor];
    
    // Do any additional setup after loading the view.
    
    LayerLabel *label = [[LayerLabel alloc] initWithFrame:CGRectMake(0, 100, 200, 100)];
    label.backgroundColor = [UIColor grayColor];
    label.textColor = [UIColor blueColor];
    label.font = [UIFont systemFontOfSize:16];
    label.text = @"iioafjdiosajfioaepfjdklsvniweajfeakdoivewgvdsjvklxcnziodjsfaeiowjdmszfiodnbiovejwaiofjeiowajfeoiawf";
    [self.view addSubview:label];

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
