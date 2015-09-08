//
//  ItemTableViewController.m
//  ShopListViper
//
//  Created by admin on 26/07/15.
//  Copyright (c) 2015 orafaelreis. All rights reserved.
//

#import "ItemTableViewController.h"

@interface ItemTableViewController()<UITableViewDataSource, UITableViewDelegate>

@end

static CGFloat kDefaultTableViewHeight = 44.f;
static NSString *kIdentifierCell = @"ItemTableViewCell";

@implementation ItemTableViewController


#pragma mark - TODO: BaseViewController

- (void)viewDidLoad{
    [super viewDidLoad];
    [super addPullDown];
    [self.tableView addSubview:self.refreshControl];
}


- (void)reloadData{
    [super reloadData];
    [self.tableView reloadData];
}

-(void)setupData:(id)data{
    self.items = (NSArray *)data;
}

#pragma mark - UITableViewDataSource

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return self.items.count / 2;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:kIdentifierCell forIndexPath:indexPath];
    NSInteger i = 2 * indexPath.row;
    cell.textLabel.text = self.items[i];
    cell.detailTextLabel.text = [self.items[i + 1] stringValue];
    return cell;
}

#pragma mark - UITableViewDelegate

- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath
{
    return kDefaultTableViewHeight;
}

//- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
//{
//    
//}

//- (void)tableView:(UITableView *)tableView willDisplayCell:(UITableViewCell *)cell forRowAtIndexPath:(NSIndexPath *)indexPath {
//    
//}


@end
