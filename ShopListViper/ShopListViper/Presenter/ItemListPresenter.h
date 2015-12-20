//
//  ItemPresenter.h
//  ShopListViper
//
//  Created by admin on 26/07/15.
//  Copyright (c) 2015 orafaelreis. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "BasePresenter.h"

@interface ItemListPresenter : BasePresenter;

- (void) openAddItem;
- (void) openAddItemAtIndex: (NSInteger) index;

@end