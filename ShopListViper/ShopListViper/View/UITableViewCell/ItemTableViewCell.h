//
//  ItemTableViewCell.h
//  Cascavel
//
//  Created by admin on 29/11/15.
//  Copyright © 2015 orafaelreis. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ItemTableViewCell : UITableViewCell

@property(nonatomic, strong) IBOutlet UIProgressView *progressView;

-(void) setQuantity: (NSUInteger) quantity shouldBe: (NSUInteger) shouldBe;

@end
