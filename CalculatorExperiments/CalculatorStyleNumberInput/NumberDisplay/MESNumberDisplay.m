//
//  MESNumberDisplay.m
//  CalculatorExperiments
//
//  Created by Hok Shun Poon on 01/11/2014.
//  Copyright (c) 2014 Hok Shun Poon. All rights reserved.
//

#import <ReactiveCocoa/ReactiveCocoa.h>
#import "MESNumberDisplay.h"

@interface MESNumberDisplay ()
@property (strong, nonatomic) IBOutlet UILabel *numberLabel;
@property (strong, nonatomic) IBOutlet UILabel *unitLabel;
@end

@implementation MESNumberDisplay

- (void)awakeFromNib {
    [super awakeFromNib];

    // RAC Bindings
    RAC(self, numberLabel.text) = RACObserve(self, numberString);
    RAC(self, unitLabel.text) = RACObserve(self, unit);
}

@end
