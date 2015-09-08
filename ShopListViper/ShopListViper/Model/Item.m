//
//  Item.m
//  ShopListViper
//
//  Created by admin on 26/07/15.
//  Copyright (c) 2015 orafaelreis. All rights reserved.
//

#import "Item.h"

@implementation Item

- (id)initWithCoder:(NSCoder *)aDecoder
{
    if(self = [super initWithCoder:aDecoder])
    {
        self.value = [[aDecoder decodeObjectForKey:@"value"] integerValue];
    }
    return self;
}

- (void)encodeWithCoder:(NSCoder *)aCoder{
    [super encodeWithCoder:aCoder];
    [aCoder encodeObject:@(self.value) forKey:@"value"];
}

@end
