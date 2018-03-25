//
//  NJView.m
//  01-刷帧
//
//  Created by apple on 14-6-10.
//  Copyright (c) 2014年 heima. All rights reserved.
//

#import "NJView.h"

@implementation NJView


- (void)setRadius:(float)radius
{
    _radius = radius;
    
    // 2.通知自定义view重新绘制图形
    [self setNeedsDisplay];
}

- (void)awakeFromNib
{
    self.radius = 10;
}

- (void)drawRect:(CGRect)rect
{
    // 1.获取上下文
    CGContextRef ctx = UIGraphicsGetCurrentContext();
    // 2.绘图
//    CGContextAddEllipseInRect(ctx, CGRectMake(0, 0, 200, 200));
    CGContextAddArc(ctx, 100, 100, self.radius, 0, 2 * M_PI, 0);
    
    [[UIColor purpleColor] set];
    // 3.渲染
    CGContextFillPath(ctx);
    
    
}


@end
