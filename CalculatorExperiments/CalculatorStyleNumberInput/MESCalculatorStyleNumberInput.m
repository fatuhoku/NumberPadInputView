//
//  MESCalculatorStyleNumberInput.m
//  CalculatorExperiments
//
//  Created by Hok Shun Poon on 01/11/2014.
//  Copyright (c) 2014 Hok Shun Poon. All rights reserved.
//

#import <ReactiveCocoa/ReactiveCocoa.h>
#import "MESCalculatorStyleNumberInput.h"
#import "MESNumberDisplay.h"
#import "MESNumberPad.h"

@interface MESCalculatorStyleNumberInput ()
@property (strong, nonatomic) IBOutlet MESNumberDisplay *numberDisplay;
@property (strong, nonatomic) IBOutlet MESNumberPad *numberPad;
@end

@implementation MESCalculatorStyleNumberInput

- (void)awakeFromNib {
    [super awakeFromNib];

    self.number = [NSDecimalNumber zero];

    // RAC Bindings
    RAC(self, numberDisplay.number) = RACObserve(self, number);
}

@end
