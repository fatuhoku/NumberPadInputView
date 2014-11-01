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
@property (strong, nonatomic) IBOutlet UIButton *button2;
@end


@implementation MESNumberPad

- (id)initWithCoder:(NSCoder *)aDecoder {
    self = [super initWithCoder:aDecoder];
    if(self) {
        [self setup];
    }
    return self;
}

- (void)setup {
    [[NSBundle mainBundle] loadNibNamed:@"MESNumberPad" owner:self options:nil];

    [self addSubview:self.view];

    [self.view mas_makeConstraints:^(MASConstraintMaker *make) {
        make.edges.equalTo(self);
    }];
}

@end