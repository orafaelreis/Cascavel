//
//  BaseEntity.m
//  ShopListViper
//
//  Created by admin on 07/09/15.
//  Copyright (c) 2015 orafaelreis. All rights reserved.
//

#import "BaseEntity.h"

@implementation BaseEntity


- (id)initWithCoder:(NSCoder *)aDecoder
{
    if(self = [super init])
    {
        self.name = [aDecoder decodeObjectForKey:@"name"];
    }
    return self;
}

- (void)encodeWithCoder:(NSCoder *)aCoder{
    [aCoder encodeObject:self.name forKey:@"name"];
}


@end
