//
//  ItemPresenter.m
//  ShopListViper
//
//  Created by Rafael Reis (@orafaelreis) on 26/07/15.
//  licensed under MIT license
//

#import "ItemListPresenter.h"
#import "ItemInteractor.h"
#import "Wireframe.h"

@implementation ItemListPresenter

-(void)viewWillAppear{
    [super viewWillAppear];
    [self requestData];
}

#pragma mark - Interface Requests

- (void) openAddItem{
    NSDictionary *params = @{kIsEditingParam: @(NO)};
    [Wireframe openAddItemFromController:self.interface withParams:params];
}

- (void) openAddItemAtIndex: (NSInteger) index{
    NSDictionary *params = @{kIsEditingParam: @(YES), kItemIndexParam: @(index)};
    [Wireframe openAddItemFromController:self.interface withParams:params];
}

#pragma mark - Handle Data

-(id)translateData:(id)data{
    return data;
}



@end
