//
//  ReflectionView.m
//  LY_ Animate
//
//  Created by yaoln on 2017/7/18.
//  Copyright © 2017年 zhangze. All rights reserved.
//

#import "ReflectionView.h"

@implementation ReflectionView

/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
}
*/
+ (Class)layerClass
{
    return [CAReplicatorLayer class];
}

- (void)setup{
    //获取重复图层
    CAReplicatorLayer *layer = (CAReplicatorLayer *)self.layer;
    
    //设置重复元素图层的个数
    layer.instanceCount = 2;
    
    //编写变换 移动反射实例到原件的垂直下方
    CATransform3D transform = CATransform3DIdentity;
    CGFloat verticalOffset = self.bounds.size.height + 2;
    transform = CATransform3DTranslate(transform, 0, verticalOffset, 0);
    transform = CATransform3DScale(transform, 1, -1, 0);
    layer.instanceTransform = transform;
    
    layer.instanceAlphaOffset = -0.6;
    
}

-(id)initWithFrame:(CGRect)frame{
    if ((self = [super initWithFrame:frame])) {
        
        [self setup];
    }
    return self;
}

- (void)awakeFromNib
{
    [self setup];
}

@end
