//
//  BaseInteractor.m
//  Cascavel: base VIPER Framework
//
//  Created by Rafael Reis (@orafaelreis) on 07/09/15.
//  licensed under MIT license
//

#import "BaseInteractor.h"

@implementation BaseInteractor

- (void)getItemsWithCallback:(ArrayCallback)callback{
    NSArray *storedItems = [self items];
    callback(storedItems);
}

- (void)addItems:(NSArray *) items WithCallback:(ArrayCallback)callback{
    NSArray *storedItems = [self items];
    storedItems = [storedItems arrayByAddingObjectsFromArray:items];
    [self setItems:storedItems];
    
    callback(storedItems);
}

- (void)updateItems:(NSArray *) items WithCallback:(ArrayCallback)callback{
    __block NSMutableArray *storedItems = [[self items] mutableCopy];
    [items enumerateObjectsUsingBlock:^(id  _Nonnull obj1, NSUInteger idx1, BOOL * _Nonnull stop1) {
        [storedItems enumerateObjectsUsingBlock:^(id  _Nonnull obj2, NSUInteger idx2, BOOL * _Nonnull stop) {
            if( [obj1 isEqual: obj2] ){
                [storedItems replaceObjectAtIndex:idx2 withObject:obj1];
            }
        }];
    }];
    
    [self setItems:storedItems];
    
    callback(storedItems);
}

- (void)removeItem:(NSArray *) item WithCallback:(ArrayCallback)callback{
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
