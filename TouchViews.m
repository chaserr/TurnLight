//
//  TouchViews.m
//  关灯游戏
//
//  Created by lanou3g on 15/5/29.
//  Copyright (c) 2015年 桐花. All rights reserved.
//

#import "TouchViews.h"

@implementation TouchViews
@synthesize isOpening ;

- (instancetype)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        //给该类添加一个BOOL类型的属性isOpening
        self.isOpening = YES;
       // self.backgroundColor = [UIColor whiteColor];
        
        self.backgroundColor =[UIColor colorWithPatternImage:[UIImage imageNamed:@"1.png"]];
    }
    return self;
}

- (void)changeCurrentLight{
    
    if (self==nil) {
        return;
    }
    [UIView beginAnimations:nil context:nil];
    [UIView setAnimationDuration:0.5];
    //翻转背景
    self.backgroundColor = isOpening ? [UIColor colorWithPatternImage:[UIImage imageNamed:@"2.png"]] :[UIColor colorWithPatternImage:[UIImage imageNamed:@"1.png"]];
    
    [UIView setAnimationTransition:UIViewAnimationTransitionFlipFromLeft forView:self cache:YES];//设置动画翻转效果
    [UIView commitAnimations];//动画结束
    isOpening = !isOpening;//改变之后为了能再改回来用取反来实现,取巧点
    
}

- (void) changeSurroundLight{
    
    //列出要翻转的小灯去调用翻转背景的方法,根据tag值来获取上下左右四个方块
    TouchViews *leftView = (TouchViews *)[self.superview viewWithTag:self.tag-1];
    TouchViews *rightView = (TouchViews *)[self.superview viewWithTag:self.tag+1];
    TouchViews *upView = (TouchViews *)[self.superview viewWithTag:self.tag-10];
    
    TouchViews *downView = (TouchViews *)[self.superview viewWithTag:self.tag+10];
    
    [leftView changeCurrentLight];
    
    [rightView changeCurrentLight];
    
    [upView changeCurrentLight];
    
    [downView changeCurrentLight];
    
}

//触摸结束时调用翻转
- (void)touchesEnded:(NSSet *)touches withEvent:(UIEvent *)event{
    
    [self changeCurrentLight];
    [self changeSurroundLight];
}


@end
