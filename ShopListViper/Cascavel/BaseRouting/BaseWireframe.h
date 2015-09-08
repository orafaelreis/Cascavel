//
//  Wireframe.h
//  ShopListViper
//
//  Created by admin on 26/07/15.
//  Copyright (c) 2015 orafaelreis. All rights reserved.
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
