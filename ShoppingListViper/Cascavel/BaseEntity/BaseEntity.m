//
//  BaseEntity.m
//  Cascavel: base VIPER Framework
//
//  Created by Rafael Reis (@orafaelreis) on 07/09/15.
//  licensed under MIT license
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
