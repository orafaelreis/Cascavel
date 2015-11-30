//
//  BasePresenter.h
//  ShopListViper
//
//  Created by admin on 07/09/15.
//  Copyright (c) 2015 orafaelreis. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "BaseInterfaceProtocol.h"
#import "BasePresenterProtocol.h"
#import "BaseInteractorProtocol.h"

@interface BasePresenter : NSObject<BasePresenterProtocol>

@property(nonatomic, weak) IBOutlet id<BaseInteractorProtocol> useCase;
@property(nonatomic, weak) IBOutlet id<BaseInterfaceProtocol> interface;

-(void)requestData;
-(void)saveData:(id)data;
-(void)removeItem:(id)item;

@end
