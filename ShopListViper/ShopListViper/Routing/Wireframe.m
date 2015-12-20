//
//  Wireframe.m
//  ShopListViper
//
//  Created by admin on 07/09/15.
//  Copyright (c) 2015 orafaelreis. All rights reserved.
//

#import "Wireframe.h"
#import "ItemTableViewController.h"
#import "AddItemViewController.h"

@implementation Wireframe

#pragma mark - Override 

+ (id) entryPoint{
    return [self listViewController];
}

#pragma mark - Controllers

+ (ItemTableViewController *)listViewController
{
    return [self.mainStoryboard instantiateViewControllerWithIdentifier:kItemListViewControllerSID];
}

+ (AddItemViewController *)newItemViewController
{
    return [self.mainStoryboard instantiateViewControllerWithIdentifier:kNewItemListViewControllerSID];
}


+ (void) openAddItemFromController:(id) controller withParams:(NSDictionary*) params{
    UIViewController<BaseInterfaceProtocol> *nextController = [self newItemViewController];
    nextController.params = params;
    
    //push
    if ([controller isKindOfClass:[UIViewController class]]) {
        UIViewController *viewController = (UIViewController *)controller;
        if (viewController.navigationController) {
            [viewController.navigationController pushViewController:nextController animated:YES];
        }
    }
    
    //present
    else if ([controller respondsToSelector:@selector(presentViewController:animated:completion:)]) {
        [controller presentViewController:nextController animated:YES completion:nil];
    }
}



@end
