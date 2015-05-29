//
//  LightBlack.m
//  关灯游戏
//
//  Created by lanou3g on 15/5/29.
//  Copyright (c) 2015年 桐花. All rights reserved.
//

#import "LightBlack.h"
#import "TouchViews.h"
#define kLightLength 40

@implementation LightBlack

- (instancetype)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        float x = 10, y = 30;
        for (int i = 0; i<7; i++) {
            for (int j = 0; j<6; j++) {
                //创建7*6的小灯
                CGRect frame = CGRectMake(x , y , kLightLength, kLightLength);
                TouchViews *tViews = [[[TouchViews alloc]initWithFrame:frame]autorelease];
                tViews.backgroundColor =[UIColor colorWithPatternImage:[UIImage imageNamed:@"1.png"]];
                tViews.tag = 100+i*10+j;
                [self addSubview:tViews];
                x+=(kLightLength +20);
                
            }
            
            y +=(kLightLength +20);
            x=10;
        }
    }
    return self;
}

@end
