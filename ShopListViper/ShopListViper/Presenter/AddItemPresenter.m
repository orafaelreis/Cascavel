//
//  AddItemPresenter.m
//  ShopListViper
//
//  Created by admin on 07/09/15.
//  Copyright (c) 2015 orafaelreis. All rights reserved.
//

#import "AddItemPresenter.h"
#import "Wireframe.h"
#import "Item.h"

@implementation AddItemPresenter

-(void)viewWillAppear{
    [super viewWillAppear];
    [self requestData];
}

- (id)translateData:(id)data{
    NSUInteger index = 0;
    NSDictionary *params = [self.interface params];
    if ([self isEditing]) {
        index = [params[kItemIndexParam] unsignedIntegerValue];
    }
    return [((NSArray*)data) objectAtIndex:index];
}


- (void)updateData:(NSArray *)data{
    Item *item = [[Item alloc] init];
    item.name = data[0];
    item.actualValue = [data[1] integerValue];
    item.plannedValue = [data[2] integerValue];
    
    NSArray *items = [NSArray arrayWithObjects:item, nil];
    
    if ([self isEditing]) {
        [super updateData:items];
    }
    else{
        [super addData:items];
    }

    [Wireframe backFrom:self.interface];
}

- (void)addData:(id)data{
    [self updateData:data];
}

- (BOOL) isEditing{
   return [self.interface.params[kIsEditingParam] boolValue];
}

@end
