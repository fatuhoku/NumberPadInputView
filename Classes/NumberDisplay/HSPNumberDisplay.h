//
//  HSPNumberDisplay.h
//  CalculatorExperiments
//
//  Created by Hok Shun Poon on 01/11/2014.
//  Copyright (c) 2014 Hok Shun Poon. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "HSPXibLoadedView.h"

@interface HSPNumberDisplay : HSPXibLoadedView
@property(nonatomic, copy) NSString *numberString;
@property(nonatomic, copy) NSString *unit;
@end
