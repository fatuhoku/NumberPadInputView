//
//  MESNumberPad.h
//  CalculatorExperiments
//
//  Created by Hok Shun Poon on 31/10/2014.
//  Copyright (c) 2014 Hok Shun Poon. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "MESXibLoadedView.h"

typedef void (^NumberTouchedBlock)(NSDecimalNumber *n);
typedef void (^VoidBlock)();

@interface MESNumberPad : MESXibLoadedView
@end
