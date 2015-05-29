//
//  ViewController.m
//  关灯游戏
//
//  Created by lanou3g on 15/5/29.
//  Copyright (c) 2015年 桐花. All rights reserved.
//

#import "ViewController.h"
#import "LightBlack.h"
@interface ViewController ()

@end

@implementation ViewController

- (void)loadView{
    LightBlack *LBView = [[LightBlack alloc]init];
    self.view = LBView;
    LBView.backgroundColor = [UIColor groupTableViewBackgroundColor];
    [LBView release];
    
}

- (void)viewDidLoad {
    [super viewDidLoad];
   
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
