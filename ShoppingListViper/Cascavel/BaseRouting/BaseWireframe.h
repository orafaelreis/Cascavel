//
//  Wireframe.h
//  Cascavel: base VIPER Framework
//
//  Created by Rafael Reis (@orafaelreis) on 26/07/15.
//  licensed under MIT license
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

static NSString *const kMainStoryboardName = @"Main";

@interface BaseWireframe : NSObject

+(UIStoryboard *)mainStoryboard;
+(id)startPoint;

+(void)backFrom: (id) controller;
+(void)presentRootViewControllerInWindow: (UIWindow *) window;

@end
