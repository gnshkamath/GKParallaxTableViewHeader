//
//  GKParallaxTableViewHeader.h
//  GKParallaxTableViewHeader
//
//  Created by Ganesh on 29/10/15.
//  Copyright © 2015 Ganesh Kamath. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface GKParallaxTableViewHeader : UIView

@property (weak, nonatomic) IBOutlet NSLayoutConstraint *topConstraint;
@property (weak, nonatomic) IBOutlet NSLayoutConstraint *bottomConstraint;
@property (weak, nonatomic) IBOutlet UIView *overlayView;

@end
