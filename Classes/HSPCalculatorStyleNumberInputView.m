//
//  HSPCalculatorStyleNumberInputView.m
//  CalculatorExperiments
//
//  Created by Hok Shun Poon on 01/11/2014.
//  Copyright (c) 2014 Hok Shun Poon. All rights reserved.
//

#import <ReactiveCocoa/RACEXTScope.h>
#import <ReactiveCocoa/ReactiveCocoa.h>
#import "HSPCalculatorStyleNumberInputView.h"
#import "HSPNumberDisplay.h"
#import "HSPNumberPad.h"

@interface HSPCalculatorStyleNumberInputView ()
@property(nonatomic, strong) IBOutlet HSPNumberDisplay *numberDisplay;
@property(nonatomic, strong) IBOutlet HSPNumberPad *numberPad;

@property(nonatomic, copy) NSString *string;
@end

@implementation HSPCalculatorStyleNumberInputView

- (void)awakeFromNib {
    [super awakeFromNib];

    self.string = @"0";

    @weakify(self)
    [self.numberPad setNumberTouchedBlock:^(NSUInteger n) {
        @strongify(self)

        NSString *digitString = [NSString stringWithFormat:@"%lu", (unsigned long) n];

        if ([self.string length] < 8) {
            if ([self.string isEqualToString:@"0"]) {
                self.string = digitString;
            } else {
                self.string = [NSString stringWithFormat:@"%@%@", self.string, digitString];
            }
        }
    }                   clearTouchedBlock:^{
        @strongify(self)

        self.string = @"0";

    }            decimalPointTouchedBlock:^{
        @strongify(self)

        if (![self.string containsString:@"."]) {
            self.string = [NSString stringWithFormat:@"%@.", self.string];
        }
    }];

    // RAC Bindings
    RAC(self, numberDisplay.numberString) = RACObserve(self, string);
    RAC(self, numberDisplay.unit) = RACObserve(self, unit);

    RAC(self, number) = [RACObserve(self, string) map:^(NSString *string) {
        return [NSDecimalNumber decimalNumberWithString:string];
    }];
}

@end
