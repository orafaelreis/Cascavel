//
//  AddItemViewController.m
//  ShopListViper
//
//  Created by admin on 07/09/15.
//  Copyright (c) 2015 orafaelreis. All rights reserved.
//

#import "AddItemViewController.h"
#import "Constants.h"

const uint quantityStepperTag = 1;
const uint plannedStepperTag = 2;

@implementation AddItemViewController


- (void)setupData:(id)data{
    if ([self.params[kIsEditingParam] boolValue]) {
        self.item = data;
    }
}

- (void)reloadData{
    if (self.item) {
        self.nameTextField.text = self.item.name;
        [self setStepper:self.plannedStepper withValue:self.item.plannedValue];
        [self setStepper:self.valueStepper withValue:self.item.actualValue];
    }
}


- (IBAction)save:(id)sender{
    int val = self.valueLabel.text.intValue, plannedValue = self.plannedValue.text.intValue;
    NSArray *data = [NSArray arrayWithObjects:self.nameTextField.text, @(val), @(plannedValue), nil];
    [self.presenter updateData:data];
}

- (IBAction)changeStepperValue:(UIStepper *) stepper{
    [self setStepper:stepper withValue:stepper.value];
}

- (void)setStepper: (UIStepper*)stepper withValue:(NSUInteger)value{
    stepper.value = value;
    if (stepper == self.valueStepper){
        self.valueLabel.text = [NSString stringWithFormat:@"%d", (int) value];
    }
    else if (stepper == self.plannedStepper){
        self.plannedValue.text = [NSString stringWithFormat:@"%d", (int) value];
    }
}

@end
