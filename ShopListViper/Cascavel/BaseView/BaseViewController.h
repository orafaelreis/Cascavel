//
//  BaseViewController.h
//  Cascavel: base VIPER Framework
//
//  Created by Rafael Reis (@orafaelreis) on 26/07/15.
//  licensed under MIT license
//

#import <UIKit/UIKit.h>
#import "BasePresenterProtocol.h"
#import "BaseInterfaceProtocol.h"

@interface BaseViewController : UIViewController<BaseInterfaceProtocol>

@property(nonatomic, strong) IBOutlet id<BasePresenterProtocol> presenter;
@property(nonatomic, strong) IBOutlet UIRefreshControl *refreshControl;

-(void)showLoading;
-(void)removeLoading;
-(void)reloadData;
@end
