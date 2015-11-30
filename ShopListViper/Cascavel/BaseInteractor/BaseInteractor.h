//
//  BaseInteractor.h
//  ShopListViper
//
//  Created by admin on 07/09/15.
//  Copyright (c) 2015 orafaelreis. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "BaseInteractorProtocol.h"

@interface BaseInteractor : NSObject<BaseInteractorProtocol>

- (void)getItemsWithCallback:(ArrayCallback)callback;
- (void)addItems:(id) items WithCallback:(ArrayCallback)callback;
- (void)removeItem:(id)item WithCallback:(ArrayCallback)callback;

@end
