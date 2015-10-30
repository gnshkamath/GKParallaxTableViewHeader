//
//  GKParallaxTableViewHeader.m
//  GKParallaxTableViewHeader
//
//  Created by Ganesh on 29/10/15.
//  Copyright © 2015 Ganesh Kamath. All rights reserved.
//

#import "GKParallaxTableViewHeader.h"

@implementation GKParallaxTableViewHeader

- (void)awakeFromNib
{
    [super awakeFromNib];
    self.overlayView.alpha = 0.0f;
}

@end
