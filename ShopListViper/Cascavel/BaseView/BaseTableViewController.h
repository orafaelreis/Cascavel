//
//  BaseTableViewController.h
//  Cascavel: base VIPER Framework
//
//  Created by admin on 07/09/15.
//  Copyright (c) 2015 orafaelreis. All rights reserved.
//

#import "BaseViewController.h"

@interface BaseTableViewController : UITableViewController<BaseInterfaceProtocol>{
    BaseViewController *mySelf;
}

#pragma mark - Decorator Pattern
@property(nonatomic, strong) IBOutlet id<BasePresenterProtocol> presenter;
@property(nonatomic, assign) BOOL isEditing;

-(void)showLoading;
-(void)removeLoading;


@end
