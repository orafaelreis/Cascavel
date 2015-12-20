//
//  ItemTableViewController.h
//  ShopListViper
//
//  Created by admin on 26/07/15.
//  Copyright (c) 2015 orafaelreis. All rights reserved.
//

#import "BaseViewController.h"
#import "ItemListPresenter.h"
#import "Item.h"

@interface ItemTableViewController : BaseViewController

@property(nonatomic, strong) IBOutlet UITableView *tableView;
@property(nonatomic, strong) NSMutableArray<Item *> *items;
@property(nonatomic, strong) ItemListPresenter<BasePresenterProtocol> *presenter;

- (void)setupData:(id)data;

@end
