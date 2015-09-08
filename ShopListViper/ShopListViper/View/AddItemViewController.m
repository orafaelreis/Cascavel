//
//  AddItemViewController.m
//  ShopListViper
//
//  Created by admin on 07/09/15.
//  Copyright (c) 2015 orafaelreis. All rights reserved.
//

#import "AddItemViewController.h"

@implementation AddItemViewController


- (IBAction)save:(id)sender{
    NSInteger val = [self.valueLabel.text integerValue];
    NSArray *data = [NSArray arrayWithObjects:self.nameTextField.text, @(val), nil];
    [self.presenter saveData:data];
}

- (IBAction)addValue:(UIStepper *)stepper{
    double val = stepper.value;
    if (val < 10) {
        self.valueLabel.text = [NSString stringWithFormat:@"%d", (int) val];
    }
}


- (IBAction)subValue:(UIStepper *) stepper{
    double val = stepper.value;
    if (val >= 0) {
        self.valueLabel.text = [NSString stringWithFormat:@"%d", (int) val];
    }
}



@end
