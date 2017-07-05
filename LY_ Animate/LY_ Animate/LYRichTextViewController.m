//
//  LYRichTextViewController.m
//  LY_ Animate
//
//  Created by yaoln on 2017/7/5.
//  Copyright © 2017年 zhangze. All rights reserved.
//

#import "LYRichTextViewController.h"
#import <CoreText/CoreText.h>

@interface LYRichTextViewController ()

@property(nonatomic, strong) UIView *labelView;

@end

@implementation LYRichTextViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor whiteColor];
    // Do any additional setup after loading the view.
    _labelView = [[UIView alloc] initWithFrame:CGRectMake(0, 100, 200, 200)];
    _labelView.backgroundColor = [UIColor grayColor];
    [self.view addSubview:_labelView];
    
    //create a CATextLayer
    CATextLayer *textLayer = [CATextLayer layer];
    textLayer.frame = CGRectMake(0, 0, _labelView.frame.size.width, _labelView.frame.size.height);
    textLayer.contentsScale = [[UIScreen mainScreen] scale];
    [_labelView.layer addSublayer:textLayer];
    
    //set text attributes
    textLayer.alignmentMode = kCAAlignmentLeft;
    textLayer.wrapped = YES; //自行换行
    
    //choose a font
    UIFont *font = [UIFont systemFontOfSize:15];

    //choose same text
    NSString *text = @"Lorem ipsum dolor sit amet, consectetur adipiscing \ elit. Quisque massa arcu, eleifend vel varius in, facilisis pulvinar \ leo. Nunc quis nunc at mauris pharetra condimentum ut ac neque. Nunc \ elementum, libero ut porttitor dictum, diam odio congue lacus, vel \ fringilla sapien diam at purus. Etiam suscipit pretium nunc sit amet \ lobortis";

    
    //create attributed string
    NSMutableAttributedString *attributedString = [[NSMutableAttributedString alloc] initWithString:text];
    
    
    //convert UIFont to a CTFont
    CFStringRef fontName = (__bridge CFStringRef)font.fontName; //转换字体名称
    CGFloat fontSize = font.pointSize;
    CTFontRef fontRef = CTFontCreateWithName(fontName, fontSize, nil);
    
    
    //set text attributes
    NSDictionary *attribs = @{
                              (__bridge id)kCTForegroundColorAttributeName:(__bridge id)[UIColor blueColor].CGColor,
                              (__bridge id)kCTFontAttributeName:(__bridge id)fontRef,
                              (__bridge id)kCTUnderlineColorAttributeName:@(kCTUnderlineStyleSingle)
                              
                              };
    [attributedString setAttributes:attribs range:NSMakeRange(5, 20)];
    
    //release the CTFont we created earlier
    CFRelease(fontRef);
    
    //set layer text
    textLayer.string = attributedString;
    
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
