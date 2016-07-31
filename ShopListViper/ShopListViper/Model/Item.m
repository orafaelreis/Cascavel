//
//  Item.m
//  ShopListViper
//
//  Created by Rafael Reis (@orafaelreis) on 26/07/15.
//  licensed under MIT license
//

#import "Item.h"

@implementation Item

- (id)initWithCoder:(NSCoder *)aDecoder
{
    if(self = [super initWithCoder:aDecoder])
    {
        self.actualValue = [[aDecoder decodeObjectForKey:@"actualValue"] integerValue];
        self.plannedValue = [[aDecoder decodeObjectForKey:@"plannedValue"] integerValue];
    }
    return self;
}

- (void)encodeWithCoder:(NSCoder *)aCoder{
    [super encodeWithCoder:aCoder];
    [aCoder encodeObject:@(self.actualValue) forKey:@"actualValue"];
    [aCoder encodeObject:@(self.plannedValue) forKey:@"plannedValue"];
}

- (BOOL)isEqual:(id)object{
    return [self.name isEqualToString: ((Item*)object).name];
}

@end
