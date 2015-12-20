//
//  BaseViewProtocol.h
//  Cascavel: base VIPER Framework
//
//  Created by admin on 26/07/15.
//  Copyright (c) 2015 orafaelreis. All rights reserved.
//

#ifndef ShopListViper_BaseViewProtocol_h
#define ShopListViper_BaseViewProtocol_h

//ViewControllers
@protocol BaseInterfaceProtocol <NSObject>

@property (nonatomic, strong) NSDictionary *params;

@optional
-(void)showLoading;
-(void)removeLoading;
-(void)setupData:(id)data;
-(void)setParams:(NSDictionary *)params;
-(void)reloadData;
-(void)addPullDown;

@end

#endif
