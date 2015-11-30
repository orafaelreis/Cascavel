//
//  BaseInteractor.m
//  ShopListViper
//
//  Created by admin on 07/09/15.
//  Copyright (c) 2015 orafaelreis. All rights reserved.
//

#import "BaseInteractor.h"

@implementation BaseInteractor

- (void)getItemsWithCallback:(ArrayCallback)callback{
    NSArray *storedItems = [self items];
    callback(storedItems);
}

- (void)addItems:(id) items WithCallback:(ArrayCallback)callback{// atKey:(NSString*)key;
    NSArray *storedItems = [self items];
    storedItems = [storedItems arrayByAddingObjectsFromArray:items];
    [self setItems:storedItems];
    
    callback(storedItems);
}

- (void)removeItem:(id) item WithCallback:(ArrayCallback)callback{
    NSMutableArray *storedItems = [[self items] mutableCopy];
    [storedItems removeObject:item];
    [self setItems:storedItems];

    callback(storedItems);
}


#pragma mark - BaseInteractorProtocol

- (NSString *)entityName{
    [NSException raise:NSInternalInconsistencyException
                format:@"You must override %@ in a subclass", NSStringFromSelector(_cmd)];
    return nil;
}

#pragma mark - Util

- (id)items{
    NSString *key = [self entityName];
    NSData *data = [[NSUserDefaults standardUserDefaults] objectForKey:key];
    id items = [NSKeyedUnarchiver unarchiveObjectWithData:data];
    if (!items) {
        items = [[NSArray alloc] init];
    }
    return items;
}

- (void) setItems: (id) items{
    NSString *key = [self entityName];
    NSData *data = [NSKeyedArchiver archivedDataWithRootObject:items];
    [[NSUserDefaults standardUserDefaults] setObject:data forKey:key];
    [[NSUserDefaults standardUserDefaults] synchronize];
}

@end
