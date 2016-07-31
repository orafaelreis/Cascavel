//
//  BaseTableViewController.h
//  Cascavel: base VIPER Framework
//
//  Created by Rafael Reis (@orafaelreis) on 07/09/15.
//  licensed under MIT license
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
