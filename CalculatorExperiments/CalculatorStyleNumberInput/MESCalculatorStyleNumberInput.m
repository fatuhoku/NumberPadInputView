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

    // Set up blocks
    [self.numberPad setNumberTouchedBlock:^(NSUInteger n){
        NSLog(@"Touched number: %lu", (unsigned long)n);
    } clearTouchedBlock:^{
        NSLog(@"Touched CLEAR.");
    } decimalPointTouchedBlock:^{
        NSLog(@"Touched DP.");
    }];

        // RAC Bindings
    RAC(self, numberDisplay.number) = RACObserve(self, number);
    RAC(self, numberDisplay.unit) = RACObserve(self, unit);
}

@end
