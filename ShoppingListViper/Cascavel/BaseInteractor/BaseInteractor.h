//
//  BaseInteractor.h
//  Cascavel: base VIPER Framework
//
//  Created by Rafael Reis (@orafaelreis) on 07/09/15.
//  licensed under MIT license
//

#import <Foundation/Foundation.h>
#import "BaseInteractorProtocol.h"

@interface BaseInteractor : NSObject<BaseInteractorProtocol>

- (void)getItemsWithCallback:(ArrayCallback)callback;
- (void)addItems:(NSArray *) items WithCallback:(ArrayCallback)callback;
- (void)updateItems:(NSArray *) items WithCallback:(ArrayCallback)callback;
- (void)removeItem:(NSArray *)item WithCallback:(ArrayCallback)callback;

@end
