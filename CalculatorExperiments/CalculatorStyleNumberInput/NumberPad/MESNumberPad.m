//
//  MESNumberPad.m
//  CalculatorExperiments
//
//  Created by Hok Shun Poon on 31/10/2014.
//  Copyright (c) 2014 Hok Shun Poon. All rights reserved.
//

#import "MESNumberPad.h"
#import "View+MASAdditions.h"

@interface MESNumberPad ()
@property(nonatomic, copy) NumberTouchedBlock numberTouchedBlock;
@property(nonatomic, copy) VoidBlock clearTouchedBlock;
@property(nonatomic, copy) VoidBlock decimalPointTouchedBlock;
@end

@implementation MESNumberPad

- (void)setNumberTouchedBlock:(NumberTouchedBlock)numberTouchedBlock
                 clearTouchedBlock:(VoidBlock)clearTouchedBlock
     decimalPointTouchedBlock:(VoidBlock)decimalPointTouchedBlock {
    self.numberTouchedBlock = numberTouchedBlock;
    self.clearTouchedBlock = clearTouchedBlock;
    self.decimalPointTouchedBlock = decimalPointTouchedBlock;
}

@end