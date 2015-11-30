//
//  AddItemViewController.m
//  ShopListViper
//
//  Created by admin on 07/09/15.
//  Copyright (c) 2015 orafaelreis. All rights reserved.
//

#import "AddItemViewController.h"

const uint quantityStepperTag = 1;
const uint plannedStepperTag = 2;

@implementation AddItemViewController


- (IBAction)save:(id)sender{
    int val = self.valueLabel.text.intValue, plannedValue = self.plannedValue.text.intValue;
    NSArray *data = [NSArray arrayWithObjects:self.nameTextField.text, @(val), @(plannedValue), nil];
    [self.presenter saveData:data];
}

- (IBAction)addValue:(UIStepper *)stepper{
    double val = stepper.value;
    if (stepper == self.valueStepper) {
        self.valueLabel.text = [NSString stringWithFormat:@"%d", (int) val];
    }
    else if (stepper == self.plannedStepper) {
        self.plannedValue.text = [NSString stringWithFormat:@"%d", (int) val];
    }
}


- (IBAction)subValue:(UIStepper *) stepper{
    double val = stepper.value;
    if (val >= 0) {
        if (stepper == self.valueStepper){
            self.valueLabel.text = [NSString stringWithFormat:@"%d", (int) val];
        }
        else if (stepper == self.plannedStepper){
            self.plannedValue.text = [NSString stringWithFormat:@"%d", (int) val];
        }
    }
}



@end
