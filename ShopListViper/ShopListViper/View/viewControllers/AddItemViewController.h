//
//  AddItemViewController.h
//  ShopListViper
//
//  Created by admin on 07/09/15.
//  Copyright (c) 2015 orafaelreis. All rights reserved.
//

#import "BaseTableViewController.h"

@interface AddItemViewController : BaseTableViewController

@property(nonatomic, strong) IBOutlet UITextField *nameTextField;
@property(nonatomic, strong) IBOutlet UILabel *valueLabel;
@property(nonatomic, strong) IBOutlet UILabel *plannedValue;

@property(nonatomic, strong) IBOutlet UIStepper *valueStepper;
@property(nonatomic, strong) IBOutlet UIStepper *plannedStepper;

@end
