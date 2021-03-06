//
//  BasePresenter.h
//  Cascavel: base VIPER Framework
//
//  Created by Rafael Reis (@orafaelreis) on 07/09/15.
//  licensed under MIT license
//

#ifndef ShoppingListViper_BasePresenter_h
#define ShoppingListViper_BasePresenter_h

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
-(void)addData:(id)data;
-(void)updateData:(id)data;
-(void)reloadView;

@end

#endif
