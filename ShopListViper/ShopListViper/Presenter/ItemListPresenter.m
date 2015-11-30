//
//  ItemPresenter.m
//  ShopListViper
//
//  Created by admin on 26/07/15.
//  Copyright (c) 2015 orafaelreis. All rights reserved.
//

#import "ItemListPresenter.h"
#import "ItemInteractor.h"
#import "Wireframe.h"

@implementation ItemListPresenter

-(void)viewWillAppear{
    [super viewWillAppear];
    [self requestData];
}

#pragma mark - Handle Data

-(id)translateData:(id)data{
//    NSMutableArray *mutableData;
//    if ([data isKindOfClass:[NSArray class]]) {
//        mutableData = [NSMutableArray arrayWithCapacity:[data count]];
//        for (Item *i in data) {
//            [mutableData addObject:i.name];
//            [mutableData addObject:@(i.actualValue)];
//            [mutableData addObject:@(i.plannedValue)];
//        }
//    }
    return data; //mutableData;
}



@end
