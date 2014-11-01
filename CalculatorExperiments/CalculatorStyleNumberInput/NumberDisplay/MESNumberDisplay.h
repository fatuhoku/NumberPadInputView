//
//  MESNumberDisplay.h
//  CalculatorExperiments
//
//  Created by Hok Shun Poon on 01/11/2014.
//  Copyright (c) 2014 Hok Shun Poon. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "MESXibLoadedView.h"

@interface MESNumberDisplay : MESXibLoadedView
@property(nonatomic, strong) NSDecimalNumber *number;
@end
