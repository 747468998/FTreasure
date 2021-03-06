//
//  TreasureNumberViewController.m
//  WinTreasure
//
//  Created by Apple on 16/6/15.
//  Copyright © 2016年 linitial. All rights reserved.
//

#import "TreasureNumberViewController.h"
#import "DetailTreasureRecordHeader.h"

@interface TreasureNumberViewController ()

@property (nonatomic, strong) UIScrollView *scrollView;

@end

@implementation TreasureNumberViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.navigationItem.title = @"夺宝号码";
    [self setup];
}

- (UIScrollView *)scrollView {
    if (!_scrollView) {
        _scrollView = [[UIScrollView alloc]initWithFrame:({
            CGRect rect = {0,0,kScreenWidth,kScreenHeight-kNavigationBarHeight};
            rect;
        })];
    }
    return _scrollView;
}

- (void)setup {
    [self.view addSubview:self.scrollView];
    DetailTreasureRecordHeader *header = [[DetailTreasureRecordHeader alloc]initWithFrame:({
        CGRect rect = {0,kNavigationBarHeight,kScreenWidth,HUGE};
        rect;
    })];
    [_scrollView addSubview:header];
    
    YYTextView *textView = [[YYTextView alloc]initWithFrame:({
        CGRect rect = {15,header.bottom,kScreenWidth-15*2,kScreenHeight-header.bottom};
        rect;
    })];
    textView.font = SYSTEM_FONT(13);
    textView.textColor = UIColorHex(333333);
    textView.text = @"10042 10042   10042       10042 10042 10042 10042 10042 10042 10042 10042 10042 10042  10042   10042    10042 10042 10042 10042 10042 ";
    [_scrollView addSubview:textView];
    
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
