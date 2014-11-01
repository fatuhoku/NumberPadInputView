//
// Created by Hok Shun Poon on 01/11/2014.
// Copyright (c) 2014 Hok Shun Poon. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>


// Lets you position and set up UIViews on XIBs / storyboards and have its view load from a XIB.
// Works with autolayout constraints on the bounds of the view.
// The XIB name is given by the class name set in Interface Builder.
@interface HSPXibLoadedView : UIView
@property(strong, nonatomic) IBOutlet UIView *view;
@end