//
//  ItemPresenter.h
//  ShopListViper
//
//  Created by Rafael Reis (@orafaelreis) on 26/07/15.
//  licensed under MIT license
//

#import <Foundation/Foundation.h>
#import "BasePresenter.h"

@interface ItemListPresenter : BasePresenter;

- (void) openAddItem;
- (void) openAddItemAtIndex: (NSInteger) index;

@end