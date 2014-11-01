//
//  MESCalculatorStyleNumberInput.h
//  CalculatorExperiments
//
//  Created by Hok Shun Poon on 01/11/2014.
//  Copyright (c) 2014 Hok Shun Poon. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "HSPXibLoadedView.h"

@interface MESCalculatorStyleNumberInput : HSPXibLoadedView
@property(nonatomic, strong) NSDecimalNumber *number;
@property(nonatomic, copy) NSString *unit;
@end
