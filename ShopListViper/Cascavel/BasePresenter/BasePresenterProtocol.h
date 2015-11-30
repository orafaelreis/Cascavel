//
//  BasePresenter.h
//  ShopListViper
//
//  Created by admin on 07/09/15.
//  Copyright (c) 2015 orafaelreis. All rights reserved.
//

#ifndef ShopListViper_BasePresenter_h
#define ShopListViper_BasePresenter_h

//Presenter
@protocol BasePresenterProtocol <NSObject>

@required

#pragma mark - View LifeCycle
-(void)loadView;
-(void)viewDidLoad;
-(void)viewWillAppear;
-(void)viewDidAppear;
-(void)viewWillDisappear;
-(void)viewDidDisappear;

@optional
-(void)requestData;
-(id)translateData:(id)data;
-(void)addItem;
-(void)removeItem:(id)item;
-(void)saveData:(id)data;
-(void)reloadView;

@end

#endif
