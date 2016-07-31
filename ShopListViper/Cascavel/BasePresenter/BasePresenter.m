    //
//  BasePresenter.m
//  Cascavel: base VIPER Framework
//
//  Created by Rafael Reis (@orafaelreis) on 07/09/15.
//  licensed under MIT license
//

#import "BasePresenter.h"


@implementation BasePresenter

#pragma mark - View LifeCycle

- (void)loadView{;}
- (void)viewDidLoad{;}
- (void)viewWillAppear{;}
- (void)viewDidAppear{;}
- (void)viewWillDisappear{;}
- (void)viewDidDisappear{;}

-(void)requestData{
    [self.interface showLoading];
    __weak BasePresenter *me = self;
    [self.useCase getItemsWithCallback:^(id items) {
        id data = [me translateData:items];
        [me.interface setupData: data];
        [me.interface reloadData];
        [me.interface removeLoading];
    }];
}

-(void)addData:(id)data{
    [self.interface showLoading];
    __weak BasePresenter *me = self;
    [self.useCase addItems:data WithCallback:^(id items) {
        [me.interface removeLoading];
    }];
    
}

-(void)updateData:(id)data{
    [self.interface showLoading];
    __weak BasePresenter *me = self;
    [self.useCase updateItems:data WithCallback:^(id items) {
        [me.interface removeLoading];
    }];
}

-(void)removeItem:(id)item{
    [self.interface showLoading];
    __weak BasePresenter *me = self;
    [self.useCase removeItem:item WithCallback:^(id items) {
        [me.interface removeLoading];
    }];
}

@end
