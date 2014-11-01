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

    // 1. When a digit comes in
    // 1.1. If the current string is 0, then replace the 0 with the new digit.
    // 1.2. Otherwise append the new string to the end of the string.
    // 1.3. If the number exceeds 8 digits, don't do anything.
    //
    // 2. When decimal point comes in
    // 2.1 If the current string doesn't contain the decimal point then is added.
    // 2.2 If the current string contains the decimal point already then do nothing.
    //
    // 3. When clear, the string is reset to "0".
    //
    // 4. Whenever the string is updated, exposed NSDecimalNumber.

    // RAC Bindings
    RAC(self, numberDisplay.number) = RACObserve(self, number);
    RAC(self, numberDisplay.unit) = RACObserve(self, unit);
}

@end
