//
//  HomeViewController.m
//  ComponentDemo
//
//  Created by 李强 on 2017/3/14.
//  Copyright © 2017年 李强. All rights reserved.
//

#import "HomeViewController.h"
#import <HandyFrame/UIView+LayoutMethods.h>

NSString * const kCellIdentifier = @"kCellIdentifier";

@interface HomeViewController ()<UITableViewDelegate,UITableViewDataSource>

@property (nonatomic,strong) UITableView * tableView;
@property (nonatomic,strong) NSArray * arrData;

@end

@implementation HomeViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    [self.view addSubview:self.tableView];
}


-(void)viewWillLayoutSubviews{
    [super viewWillLayoutSubviews];
    [self.tableView fill];
}

#pragma mark - UITableViewDelegate,UITableViewDataSource

-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    return self.arrData.count;
}

-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    UITableViewCell * cell = [tableView dequeueReusableCellWithIdentifier:kCellIdentifier];
    cell.textLabel.text = self.arrData[indexPath.row];
    return cell;
}

-(void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath{

}

#pragma mark - geter setter

-(UITableView *)tableView{
    if (!_tableView) {
        _tableView = [[UITableView alloc] init];
        _tableView.delegate = self;
        _tableView.dataSource = self;
        [_tableView registerClass:[UITableViewCell class] forCellReuseIdentifier:kCellIdentifier];
    }
    return _tableView;
}

-(NSArray *)arrData{
    if (_arrData.count == 0) {
        _arrData = @[@"present detail view controller", @"push detail view controller", @"present image", @"present image when error", @"show alert", @"table view cell"];
    }
    return _arrData;
}

@end
