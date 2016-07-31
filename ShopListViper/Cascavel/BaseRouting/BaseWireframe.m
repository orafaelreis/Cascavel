//
//  Wireframe.m
//  Cascavel: base VIPER Framework
//
//  Created by Rafael Reis (@orafaelreis) on 26/07/15.
//  licensed under MIT license
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
