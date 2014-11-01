//
// Created by Hok Shun Poon on 01/11/2014.
// Copyright (c) 2014 Hok Shun Poon. All rights reserved.
//

#import "View+MASAdditions.h"
#import "HSPNumberPad.h"
#import "HSPXibLoadedView.h"


@implementation HSPXibLoadedView

- (id)initWithCoder:(NSCoder *)aDecoder {
    self = [super initWithCoder:aDecoder];
    if(self) {
        [[NSBundle mainBundle] loadNibNamed:NSStringFromClass([self class]) owner:self options:nil];

        [self addSubview:self.view];

        [self.view mas_makeConstraints:^(MASConstraintMaker *make) {
            make.edges.equalTo(self);
        }];
    }
    return self;
}

@end