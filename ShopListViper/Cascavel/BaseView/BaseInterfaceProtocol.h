//
//  BaseViewProtocol.h
//  Cascavel: base VIPER Framework
//
//  Created by Rafael Reis (@orafaelreis) on 26/07/15.
//  licensed under MIT license
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
