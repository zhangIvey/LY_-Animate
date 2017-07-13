//
//  ViewController.m
//  LY_ Animate
//
//  Created by yaoln on 2017/5/25.
//  Copyright © 2017年 zhangze. All rights reserved.
//

#import "ViewController.h"
#import "LYCAShapeDisplayViewController.h"
#import "LYLayerViewController.h"
#import "LYLayerContentsRectViewController.h"
#import "LYContentsCenterViewController.h"
#import "CustomDrawingViewController.h"
#import "LYClickViewController.h"
#import "LYzPositionViewController.h"
#import "LYRoundViewController.h"
#import "LYMaskViewController.h"
#import "LYFilterViewController.h"
#import "LYGroupRasterizeViewController.h"
#import "LYAffineTransformViewController.h"
#import "LYConcatTransformViewController.h"
#import "LY3DTransformViewController.h"
#import "LYSublayerTransformViewController.h"
#import "LYBackViewController.h"
#import "LYDelayerViewController.h"
#import "LYCubeViewController.h"
#import "LYShaperLayerViewController.h"
#import "LYTextLayerViewController.h"
#import "LYRichTextViewController.h"
#import "LYCustomLabelViewController.h"
#import "LYTransformLayerViewController.h"
#import "LYGradientLayerViewController.h"
#import "LYReplicatorLayerViewController.h"



@interface ViewController () <UITableViewDelegate, UITableViewDataSource>

@property(nonatomic, strong) UITableView *tableView;

@property(nonatomic, strong) NSArray *items;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.

    _items = @[@"CADisplayLink + CAShapeLayer",@"CALayer + hitTest",@"contentsRect - 图片拼合",@"contentsCenter",@"custom Drawing",@"anchorPoint",@"zPosition",@"视觉效果-圆角",@"图层蒙版",@"过滤拉伸",@"组透明",@"仿射变换",@"混合变换",@"3D变换",@"sublayerTransform",@"图层背面",@"扁平化图层",@"立方体",@"CAShaperLayer - 火柴人",@"CATextLayer",@"CATextLayer + 富文本 + NSAttributedString",@"UILabel的替代品",@"CATransformLayer",@"CAGradientLayer 颜色平滑过渡",@"CAReplicatorLayer重复图层"];
    
  //测试新颁布GitHub
    
    _tableView = [[UITableView alloc] initWithFrame:self.view.bounds];
    _tableView.delegate = self;
    _tableView.dataSource = self;
    
    [self.view addSubview:_tableView];
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - tableView's delegate & dataSource
- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    NSString *cellIdentifier = @"animationItem";
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:cellIdentifier];

    if (!cell) {
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:cellIdentifier];
    }
    cell.textLabel.text = [_items objectAtIndex:indexPath.row];
    return cell;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return _items.count;
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    if(indexPath.row == 0 ){
        LYCAShapeDisplayViewController *shapeView = [[LYCAShapeDisplayViewController alloc] init];
        [self.navigationController pushViewController:shapeView animated:YES];
        
    }else if (indexPath.row == 1) {
        LYLayerViewController *layerViewController = [[LYLayerViewController alloc] init];
        [self.navigationController pushViewController:layerViewController animated:YES];
    }else if (indexPath.row == 2){
        LYLayerContentsRectViewController *imageSpriteController = [[LYLayerContentsRectViewController alloc] init];
        [self.navigationController pushViewController:imageSpriteController animated:YES];
    }else if (indexPath.row == 3){
        LYContentsCenterViewController *contentsCenterViewController = [[LYContentsCenterViewController alloc] init];
        [self.navigationController pushViewController:contentsCenterViewController animated:YES];
    }else if (indexPath.row == 4){
        CustomDrawingViewController *customDrawingViewController = [[CustomDrawingViewController alloc] init];
        [self.navigationController pushViewController:customDrawingViewController animated:YES];
    }else if (indexPath.row == 5){
        LYClickViewController *clickViewController = [[LYClickViewController alloc] init];
        [self.navigationController pushViewController:clickViewController animated:YES];
    }else if (indexPath.row == 6){
        LYzPositionViewController *zPositionViewController = [[LYzPositionViewController alloc] init];
        [self.navigationController pushViewController:zPositionViewController animated:YES];
    }else if (indexPath.row == 7){
        LYRoundViewController *roundViewController = [[LYRoundViewController alloc] init];
        [self.navigationController pushViewController:roundViewController animated:YES];
    }else if (indexPath.row == 8){
        LYMaskViewController *maskViewController = [[LYMaskViewController alloc] init];
        [self.navigationController pushViewController:maskViewController animated:YES];
    }else if (indexPath.row == 9){
        LYFilterViewController *filterViewController = [[LYFilterViewController alloc] init];
        [self.navigationController pushViewController:filterViewController animated:YES];
    }else if (indexPath.row == 10){
        LYGroupRasterizeViewController *groupRasterizeViewController = [[LYGroupRasterizeViewController alloc] init];
        [self.navigationController pushViewController:groupRasterizeViewController animated:YES];
    }else if (indexPath.row == 11){
        LYAffineTransformViewController *affineTransformViewController = [[LYAffineTransformViewController alloc] init];
        [self.navigationController pushViewController:affineTransformViewController animated:YES];
    }else if (indexPath.row == 12){
        LYConcatTransformViewController *concatTransformViewController = [[LYConcatTransformViewController alloc] init];
        [self.navigationController pushViewController:concatTransformViewController animated:YES];
    }else if (indexPath.row == 13){
        LY3DTransformViewController *transform3DViewController = [[LY3DTransformViewController alloc] init];
        [self.navigationController pushViewController:transform3DViewController animated:YES];
    }else if (indexPath.row == 14){
        LYSublayerTransformViewController *sublayerTransform = [[LYSublayerTransformViewController alloc] init];
        [self.navigationController pushViewController:sublayerTransform animated:YES];
    }else if (indexPath.row == 15){
        LYBackViewController *backViewController = [[LYBackViewController alloc] init];
        [self.navigationController pushViewController:backViewController animated:YES];
    }else if (indexPath.row == 16){
        LYDelayerViewController *delayerViewController = [[LYDelayerViewController alloc] init];
        [self.navigationController pushViewController:delayerViewController animated:YES];
    }else if (indexPath.row == 17){
        LYCubeViewController *cubeViewController = [[LYCubeViewController alloc] init];
        [self.navigationController pushViewController:cubeViewController animated:YES];
    }else if (indexPath.row == 18){
        LYShaperLayerViewController *shaperLayerViewController = [[LYShaperLayerViewController alloc] init];
        [self.navigationController pushViewController:shaperLayerViewController animated:YES];
    }else if (indexPath.row == 19){
        LYTextLayerViewController *textLayerViewController = [[LYTextLayerViewController alloc] init];
        [self.navigationController pushViewController:textLayerViewController animated:YES];
    }else if (indexPath.row == 20){
        LYRichTextViewController *richTextViewController = [[LYRichTextViewController alloc] init];
        [self.navigationController pushViewController:richTextViewController animated:YES];
    }else if (indexPath.row == 21){
        LYCustomLabelViewController *customLabelViewController = [[LYCustomLabelViewController alloc] init];
        [self.navigationController pushViewController:customLabelViewController animated:YES];
    }else if (indexPath.row == 22){
        LYTransformLayerViewController *transformLayerViewController = [[LYTransformLayerViewController alloc] init];
        [self.navigationController pushViewController:transformLayerViewController animated:YES];
    }else if (indexPath.row == 23){
        LYGradientLayerViewController *gradientLayerViewController = [[LYGradientLayerViewController alloc] init];
        [self.navigationController pushViewController:gradientLayerViewController animated:YES];
    }else if(indexPath.row == 24){
        LYReplicatorLayerViewController *replicatorLayerViewController = [[LYReplicatorLayerViewController alloc] init];
        [self.navigationController pushViewController:replicatorLayerViewController animated:YES];
    }
    
}



@end



















