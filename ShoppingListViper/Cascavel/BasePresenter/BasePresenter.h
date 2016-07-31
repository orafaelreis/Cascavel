//
//  BasePresenter.h
//  Cascavel: base VIPER Framework
//
//  Created by Rafael Reis (@orafaelreis) on 07/09/15.
//  licensed under MIT license
//

#import <Foundation/Foundation.h>
#import "BaseInterfaceProtocol.h"
#import "BasePresenterProtocol.h"
#import "BaseInteractorProtocol.h"

@interface BasePresenter : NSObject<BasePresenterProtocol>

@property(nonatomic, weak) IBOutlet id<BaseInteractorProtocol> useCase;
@property(nonatomic, weak) IBOutlet id<BaseInterfaceProtocol> interface;

-(void)requestData;
-(void)addData:(id)data;
-(void)updateData:(id)data;
-(void)removeItem:(id)item;

@end
