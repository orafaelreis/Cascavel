//
//  BaseTableViewController.h
//  ShopListViper
//
//  Created by admin on 07/09/15.
//  Copyright (c) 2015 orafaelreis. All rights reserved.
//

#import "BaseViewController.h"

@interface BaseTableViewController : UITableViewController{
    BaseViewController *mySelf;
}

#pragma mark - Decorator Pattern
@property(nonatomic, strong) IBOutlet id<BasePresenterProtocol> presenter;

-(void)showLoading;
-(void)removeLoading;


@end
