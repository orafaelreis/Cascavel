//
//  ItemTableViewController.h
//  ShopListViper
//
//  Created by Rafael Reis (@orafaelreis) on 26/07/15.
//  licensed under MIT license
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
