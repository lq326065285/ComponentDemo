//
//  SecondViewController.m
//  ComponentDemo
//
//  Created by 李强 on 2017/3/15.
//  Copyright © 2017年 李强. All rights reserved.
//

#import "SecondViewController.h"
#import "UIView+LayoutMethods.h"

@interface SecondViewController ()

@property (nonatomic,strong) UILabel * labContent;

@property (nonatomic,strong) UIButton * btnBack;

@end

@implementation SecondViewController

#pragma mark - life cycle

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor orangeColor];
    [self.view addSubview:self.labContent];
    [self.view addSubview:self.btnBack];
}

-(void)viewWillLayoutSubviews{
    [self.labContent setCenter:self.view.center];
    [self.btnBack setCenter:CGPointMake(self.view.centerX, self.view.centerY + 40)];
}


#pragma mark - event response

-(void)clickBack:(UIButton *)sender{
    
    if (self.SetTitleCallBack) {
        self.SetTitleCallBack(@"这是组件化回传值");
    }
    if (self.navigationController) {
        [self.navigationController popViewControllerAnimated:YES];
    }else{
        [self dismissViewControllerAnimated:YES completion:nil];
    }
}

#pragma mark - getter setter

-(UIButton *)btnBack{
    if (!_btnBack) {
        _btnBack = [UIButton buttonWithType:UIButtonTypeCustom];
        _btnBack.backgroundColor = [UIColor blackColor];
        [_btnBack setTitle:@"点击返回" forState:UIControlStateNormal];
        [_btnBack addTarget:self action:@selector(clickBack:) forControlEvents:UIControlEventTouchUpInside];
        [_btnBack sizeToFit];
    }
    return _btnBack;
}

-(UILabel *)labContent{
    if (!_labContent) {
        _labContent = [[UILabel alloc] init];
        _labContent.text = self.content;
        [_labContent sizeToFit];
    }
    return _labContent;
}

@end
