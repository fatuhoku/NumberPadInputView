//
// Created by Hok Shun Poon on 01/11/2014.
// Copyright (c) 2014 Hok Shun Poon. All rights reserved.
//

#import <ReactiveCocoa/ReactiveCocoa.h>
#import "MESCalculatorStyleNumberInputTestViewController.h"
#import "MESCalculatorStyleNumberInput.h"

@interface MESCalculatorStyleNumberInputTestViewController ()
@property(strong, nonatomic) IBOutlet MESCalculatorStyleNumberInput *calculatorStyleNumberInput;
@property(strong, nonatomic) IBOutlet UITextField *unitField;
@end

@implementation MESCalculatorStyleNumberInputTestViewController

- (void)viewDidLoad {
    [super viewDidLoad];

    // RAC Bindings
    RAC(self, calculatorStyleNumberInput.unit) = [self.unitField rac_textSignal];
}

@end