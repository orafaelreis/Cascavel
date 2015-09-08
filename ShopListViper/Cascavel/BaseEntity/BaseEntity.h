//
//  BaseEntity.h
//  ShopListViper
//
//  Created by admin on 07/09/15.
//  Copyright (c) 2015 orafaelreis. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface BaseEntity : NSObject<NSCoding>

@property(nonatomic, strong) NSString *name;

- (void)encodeWithCoder:(NSCoder *)aCoder;
- (id)initWithCoder:(NSCoder *)aDecoder;

@end
