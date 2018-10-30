//
//  AppViewController.m
//  BLTableView
//
//  Created by fuhaiyang on 10/24/2018.
//  Copyright (c) 2018 fuhaiyang. All rights reserved.
//

#import "AppViewController.h"
#import <BLTableView/BLTableView.h>
#import <BLTableView/BLTableView+Refresh.h>
#import <BLTableView/BLTableView+EmptyDataSource.h>
@interface AppViewController ()
@property (nonatomic, strong) BLTableView  *tableView;
@end

@implementation AppViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    [self.view addSubview:self.tableView];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


- (BLTableView *)tableView{
    if (!_tableView) {
        _tableView = [[BLTableView alloc] initWithFrame:CGRectMake(0, 0, 200, 300) style:UITableViewStylePlain];
//        _tableView.bs_identifier = BLMineCell.className;
//        _tableView.tableHeaderView = self.headerView;
        _tableView.rowHeight = 49;
        _tableView.sectionHeaderHeight = 9;
        _tableView.bs_supportRefreshUp = NO;
        _tableView.bs_supportRefreshDown = NO;
    }
    return _tableView;
}
@end
