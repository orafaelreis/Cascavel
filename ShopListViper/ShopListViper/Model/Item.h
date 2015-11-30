//
//  Item.h
//  ShopListViper
//
//  Created by admin on 26/07/15.
//  Copyright (c) 2015 orafaelreis. All rights reserved.
//

#import "BaseEntity.h"

@interface Item : BaseEntity

@property(nonatomic, assign) NSInteger actualValue;
@property(nonatomic, assign) NSInteger plannedValue;

- (BOOL)isEqual:(id)object;

@end
