//
//  ViewController.m
//  RFDatePickerView
//
//  Created by 冯剑 on 2019/1/11.
//  Copyright © 2019 rocky. All rights reserved.
//
#import "RFDatePickerView/RFDatePickerView.h"
#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController{
    UIButton *_btn;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    
    UIButton *btn = [[UIButton alloc]initWithFrame:CGRectMake(100, 200, 200, 50)];
    [btn setTitle:@"选择日期" forState:UIControlStateNormal];
    [btn setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
    [self.view addSubview:btn];
    _btn = btn;
    [btn addTarget:self action:@selector(datePickAction) forControlEvents:UIControlEventTouchUpInside];
}

- (void)datePickAction{
    [RFDatePickerView showPickerViewDateBlock:^(NSString * dateStr) {
        [self->_btn setTitle:dateStr forState:UIControlStateNormal];
    }];
}

@end
