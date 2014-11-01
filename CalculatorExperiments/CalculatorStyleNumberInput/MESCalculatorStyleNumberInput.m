//
//  MESCalculatorStyleNumberInput.m
//  CalculatorExperiments
//
//  Created by Hok Shun Poon on 01/11/2014.
//  Copyright (c) 2014 Hok Shun Poon. All rights reserved.
//

#import "MESCalculatorStyleNumberInput.h"

@implementation MESCalculatorStyleNumberInput

- (void)awakeFromNib {
    [super awakeFromNib];

    self.number = [NSDecimalNumber zero];
}

@end
