//
//  AddItemViewController.h
//  ShoppingListViper
//
//  Created by Rafael Reis (@orafaelreis) on 07/09/15.
//  licensed under MIT license
//

#import "BaseTableViewController.h"
#import "Item.h"


@interface AddItemViewController : BaseTableViewController

@property(nonatomic, strong) IBOutlet UITextField *nameTextField;
@property(nonatomic, strong) IBOutlet UILabel *valueLabel;
@property(nonatomic, strong) IBOutlet UILabel *plannedValue;

@property(nonatomic, strong) IBOutlet UIStepper *valueStepper;
@property(nonatomic, strong) IBOutlet UIStepper *plannedStepper;

@property(nonatomic, strong) Item *item;


- (void)setupData:(id)data;


@end
