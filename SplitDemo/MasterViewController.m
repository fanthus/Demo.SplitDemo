//
//  MasterViewController.m
//  SplitDemo
//
//  Created by xiushanfan on 7/4/16.
//  Copyright © 2016 Frank. All rights reserved.
//

#import "MasterViewController.h"


@interface MasterViewController ()<UITableViewDelegate,UITableViewDataSource> {
    UITableView *tv;
}


@end

@implementation MasterViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    tv = [[UITableView alloc] initWithFrame:self.view.bounds style:UITableViewStylePlain];
    tv.delegate = self;
    tv.dataSource = self;
    [self.view addSubview:tv];
}

- (void)viewDidLayoutSubviews {
    tv.frame = self.view.bounds;
}

- (void)viewDidAppear:(BOOL)animated {
    NSLog(@"%s",__PRETTY_FUNCTION__);
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return 10;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    static NSString *cellId = @"cell";
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:cellId];
    if (cell == nil) {
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:cellId];
    }
    cell.textLabel.text = [NSString stringWithFormat:@"%ld",(long)indexPath.row];
    return cell;
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
    if ([self.delegate respondsToSelector:@selector(clickIndexPathRow:)]) {
        [self.delegate clickIndexPathRow:indexPath.row];
    }
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
