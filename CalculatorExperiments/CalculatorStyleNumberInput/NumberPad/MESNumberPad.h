//
//  MESNumberPad.h
//  CalculatorExperiments
//
//  Created by Hok Shun Poon on 31/10/2014.
//  Copyright (c) 2014 Hok Shun Poon. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "HSPXibLoadedView.h"

typedef void (^NumberTouchedBlock)(NSUInteger n);
typedef void (^VoidBlock)();

@interface MESNumberPad : HSPXibLoadedView
- (void)setNumberTouchedBlock:(NumberTouchedBlock)numberTouchedBlock clearTouchedBlock:(VoidBlock)clearTouchedBlock decimalPointTouchedBlock:(VoidBlock)decimalPointTouchedBlock;
@end
