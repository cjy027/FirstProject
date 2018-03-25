//
//  NJViewController.m
//  01-刷帧
//
//  Created by apple on 14-6-10.
//  Copyright (c) 2014年 heima. All rights reserved.
//

#import "NJViewController.h"
#import "NJView.h"

@interface NJViewController ()

// 监听slider滑动
- (IBAction)valueChnage:(UISlider *)sender;
@property (weak, nonatomic) IBOutlet NJView *circleView;

@end

@implementation NJViewController

- (IBAction)valueChnage:(UISlider *)sender {
//    NSLog(@"%.1f", sender.value);
    // 1.传递改变后的值给自定义view
    self.circleView.radius = sender.value;
    // 2.通知自定义view重新绘制图形
//    [self.circleView setNeedsDisplay];
    
}
@end
