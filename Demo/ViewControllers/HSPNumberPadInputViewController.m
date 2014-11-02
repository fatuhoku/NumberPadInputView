//
// Created by Hok Shun Poon on 01/11/2014.
// Copyright (c) 2014 Hok Shun Poon. All rights reserved.
//

#import <ReactiveCocoa/ReactiveCocoa.h>
#import "HSPNumberPadInputViewController.h"
#import "HSPNumberPadInputView.h"

@interface HSPNumberPadInputViewController ()
@property(strong, nonatomic) IBOutlet HSPNumberPadInputView *numberPadInputView;
@property(strong, nonatomic) IBOutlet UITextField *unitField;
@end

@implementation HSPNumberPadInputViewController

- (void)viewDidLoad {
    [super viewDidLoad];

    // RAC Bindings
    RAC(self, numberPadInputView.unit) = [self.unitField rac_textSignal];
}

@end