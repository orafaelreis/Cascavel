//
//  BaseInteractorProtocol.h
//  Cascavel: base VIPER Framework
//
//  Created by Rafael Reis (@orafaelreis) on 07/09/15.
//  licensed under MIT license
//

#ifndef ShopListViper_BaseInteractorProtocol_h
#define ShopListViper_BaseInteractorProtocol_h

typedef void (^ArrayCallback)(id items);


@protocol BaseInteractorProtocol <NSObject>

@required
- (NSString *)entityName;

@optional
- (void)getItemsWithCallback:(ArrayCallback)callback;
- (void)addItems:(id) items WithCallback:(ArrayCallback)callback;
- (void)updateItems:(id) items WithCallback:(ArrayCallback)callback;
- (void)removeItem:(id) item WithCallback:(ArrayCallback)callback;

@end
#endif
