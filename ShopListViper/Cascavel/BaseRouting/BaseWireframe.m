//
//  Wireframe.m
//  ShopListViper
//
//  Created by admin on 26/07/15.
//  Copyright (c) 2015 orafaelreis. All rights reserved.
//

#import "BaseWireframe.h"

@implementation BaseWireframe

#pragma mark - Storyboards
+ (UIStoryboard *)mainStoryboard
{
    UIStoryboard *storyboard = [UIStoryboard storyboardWithName:kMainStoryboardName
                                                         bundle:[NSBundle mainBundle]];
    return storyboard;
}

#pragma mark - Base Navigation

+ (void)backFrom: (id) controller{
    if ([controller isKindOfClass:[UIViewController class]]) {
        UIViewController *viewContrl = (UIViewController *) controller;
        [viewContrl.navigationController popViewControllerAnimated:YES];
    }
}

+(id)startPoint{
    [NSException raise:NSInternalInconsistencyException
                format:@"You must override %@ in a subclass", NSStringFromSelector(_cmd)];
    return nil;
}

+ (void) presentRootViewControllerInWindow: (UIWindow *) window{
    UINavigationController *navigationController = (UINavigationController *)[window rootViewController];
    navigationController.viewControllers = @[[self startPoint]];
}


@end
