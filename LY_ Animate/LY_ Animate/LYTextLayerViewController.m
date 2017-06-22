//
//  LYTextLayerViewController.m
//  LY_ Animate
//
//  Created by yaoln on 2017/6/21.
//  Copyright © 2017年 zhangze. All rights reserved.
//

#import "LYTextLayerViewController.h"

@interface LYTextLayerViewController ()

@end

@implementation LYTextLayerViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.view.backgroundColor = [UIColor whiteColor];
    
    CATextLayer *textLayer = [[CATextLayer alloc] init];
    textLayer.frame = CGRectMake(0, 100, 200, 200);
       //属性设置
    textLayer.foregroundColor = [UIColor blueColor].CGColor;
    textLayer.alignmentMode = kCAAlignmentCenter;
    textLayer.wrapped = YES;
    
    //字体设置
    UIFont *font = [UIFont systemFontOfSize:30.0f];
    CFStringRef fontName = (__bridge CFStringRef)font.fontName;
    CGFontRef fontRef = CGFontCreateWithFontName(fontName);
    textLayer.font = fontRef;
    textLayer.fontSize = font.pointSize;
    CGFontRelease(fontRef);
    
    //解决像素化问题
    textLayer.contentsScale = [UIScreen mainScreen].scale;
    
    //设置文本内容
    textLayer.string = @"这是一段要显示的文字adoifajifjoewajfdioajfioejaioejfoaijdlkanfidhvioaejfioadjfiojeiofmalkdfjioaejfadiljfiojasocmvaeiojfioadsjfklejiofjaiodfjeiajfodijiojafjeiofjioasjfeiofjaojdfoaijefiaojeiofafjdilvnirbgaiojeofjeoiawfjildjfoawjefjiowejfiodfgsdfgdsfgdgsfdsgfdsgdfgesrgdfsgfdsgfdsgfdsgsdfgdsfgdsfgdfsgfdsgrsgrgsdfgxgfgxrfgsrgaergdfzgdf";
    

    [self.view.layer addSublayer:textLayer];
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
