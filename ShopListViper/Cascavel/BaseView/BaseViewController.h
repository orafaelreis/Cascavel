//
//  BaseViewController.h
//  Cascavel: base VIPER Framework
//
//  Created by admin on 26/07/15.
//  Copyright (c) 2015 orafaelreis. All rights reserved.
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
