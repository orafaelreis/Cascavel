//
//  Wireframe.m
//  ShopListViper
//
//  Created by admin on 07/09/15.
//  Copyright (c) 2015 orafaelreis. All rights reserved.
//

#import "Wireframe.h"
#import "Constants.h"
#import "ItemTableViewController.h"


@implementation Wireframe

#pragma mark - Override 

+ (id) entryPoint{
    return [self listViewControllerFromStoryboard];
}

#pragma mark - Controllers

+ (ItemTableViewController *)listViewControllerFromStoryboard
{
    UIStoryboard *storyboard = [self mainStoryboard];
    return [storyboard instantiateViewControllerWithIdentifier:kItemListViewControllerSID];
}

/*
    * In case of Non Storyboard approach
    * the follow methods is a template to guide
*/

//+ (AddItemViewController *)newItemViewControllerFromStoryboard
//{
//    UIStoryboard *storyboard = [self mainStoryboard];
//    AddItemViewController *controller = [storyboard instantiateViewControllerWithIdentifier:kNewItemListViewControllerSID];
//
//    //TODO: refactor to configure dependencies
//    AddItemPresenter *presenter = [[AddItemPresenter alloc] init];
//    presenter.controller = controller;
//    controller.eventHandler = presenter;
//
//    return controller;
//}


//+ (void) presentItemControllerFrom: (id) controller{
//    if ([controller respondsToSelector:@selector(presentViewController:animated:completion:)]) {
//        UIViewController *nextController = [self listViewControllerFromStoryboard];
//        [controller presentViewController:nextController animated:YES completion:nil];
//    }
//}



@end
