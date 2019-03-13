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

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    UIButton *btn = [[UIButton alloc]initWithFrame:CGRectMake(100, 200, 200, 50)];
    [btn setTitle:@"选择日期" forState:UIControlStateNormal];
    [btn setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
    [self.view addSubview:btn];
    [btn addTarget:self action:@selector(datePickAction:) forControlEvents:UIControlEventTouchUpInside];
    
    UIButton *btn2 = [[UIButton alloc]initWithFrame:CGRectMake(100, 300, 200, 50)];
    [btn2 setTitle:@"选择日期和时间" forState:UIControlStateNormal];
    [btn2 setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
    [self.view addSubview:btn2];
    [btn2 addTarget:self action:@selector(datePickAction:) forControlEvents:UIControlEventTouchUpInside];
}

- (void)datePickAction:(UIButton *)btn{
    if ([btn.currentTitle isEqualToString:@"选择日期"]) {
        [RFDatePickerView showPickerViewWithModel:UIDatePickerModeDate formate:@"yyyy-MM-dd" DateBlock:^(NSString * _Nonnull dateStr) {
            [btn setTitle:dateStr forState:UIControlStateNormal];
        }];
    }else{
        [RFDatePickerView showPickerViewWithModel:UIDatePickerModeDateAndTime formate:@"yyyy-MM-dd HH:mm" DateBlock:^(NSString * _Nonnull dateStr) {
            [btn setTitle:dateStr forState:UIControlStateNormal];
        }];
    }
    
}

@end
