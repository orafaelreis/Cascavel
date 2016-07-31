//
//  Item.h
//  ShoppingListViper
//
//  Created by Rafael Reis (@orafaelreis) on 26/07/15.
//  licensed under MIT license
//

#import "BaseEntity.h"

@interface Item : BaseEntity

@property(nonatomic, assign) NSInteger actualValue;
@property(nonatomic, assign) NSInteger plannedValue;

- (BOOL)isEqual:(id)object;

@end
