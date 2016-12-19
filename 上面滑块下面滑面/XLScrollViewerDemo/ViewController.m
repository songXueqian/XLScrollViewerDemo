//
//  ViewController.m
//  XLScrollViewerDemo
//
//  Created by hebe on 15/1/13.
//  Copyright (c) 2015年 ___HebeTien___. All rights reserved.
//
//新浪微博：@亮亮亮亮亮靓啊
//工作邮箱：k52471@126.com

//第三方上下滑动
#import "ViewController.h"
#import "View1.h"
#import "View2.h"
#import "View3.h"
#import "View4.h"
#import "View5.h"
#import "View6.h"
#import "View7.h"

@interface ViewController ()
@property (nonatomic, strong)View1 *view1;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    self.title =@"XLScrollViewer效果演示";
    
    
    CGRect frame =CGRectMake(0, 64, self.view.frame.size.width, self.view.frame.size.height -64);//如果没有导航栏，则去掉64

    //对应填写两个数组
    NSArray *views =@[[View1 new],[View2 new],[View3 new],[View4 new],[View5 new],[View6 new],[View7 new]];
    NSArray *names =@[@"首页",@"红色",@"橙色",@"黄色",@"绿色",@"蓝色",@"紫色"];
    //创建使用
    self.scroll =[XLScrollViewer scrollWithFrame:frame withViews:views withButtonNames:names withThreeAnimation:111];//三中动画都选择
    
    //自定义各种属性。。打开查看
    self.scroll.xl_topBackImage =[UIImage imageNamed:@"10.jpg"];
    self.scroll.xl_topBackColor =[UIColor yellowColor];
    self.scroll.xl_sliderColor =[UIColor orangeColor];
    self.scroll.xl_buttonColorNormal =[UIColor redColor];
    self.scroll.xl_buttonColorSelected =[UIColor yellowColor];
    self.scroll.xl_buttonFont =12;
    self.scroll.xl_buttonToSlider =20;
    self.scroll.xl_sliderHeight =20;
    self.scroll.xl_topHeight =20;
    self.scroll.xl_isSliderCorner =YES;
    
    //加入控制器视图
    [self.view addSubview:self.scroll];
    
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end

// 版权属于原作者
// http://code4app.com (cn) http://code4app.net (en)
// 发布代码于最专业的源码分享网站: Code4App.com 
