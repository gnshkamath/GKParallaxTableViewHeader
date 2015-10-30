//
//  GKParallaxTableViewController.m
//  GKParallaxTableViewHeader
//
//  Created by Ganesh on 29/10/15.
//  Copyright © 2015 Ganesh Kamath. All rights reserved.
//

#import "GKParallaxTableViewController.h"
#import "GKParallaxTableViewHeader.h"

CGFloat const GKParallaxTableViewTopBarHeight = 64.0f;
CGFloat const GKParallaxTableViewImageHeight = 300.0f;

@interface GKParallaxTableViewController ()

@property (weak, nonatomic) IBOutlet GKParallaxTableViewHeader *headerView;

@end

@implementation GKParallaxTableViewController

- (UIStatusBarStyle)preferredStatusBarStyle
{
    return UIStatusBarStyleLightContent;
}

#pragma mark - UITableViewDataSource

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return 20;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier: @"Cell" forIndexPath: indexPath];
    return cell;
}

#pragma mark - UIScrollViewDelegate

- (void)scrollViewDidScroll:(UIScrollView *)scrollView
{
    CGFloat contentOffset = scrollView.contentOffset.y;
    CGFloat offset = GKParallaxTableViewImageHeight - GKParallaxTableViewTopBarHeight;

    self.headerView.topConstraint.constant = contentOffset;

    if (contentOffset < offset) {
        self.headerView.bottomConstraint.constant = 0.0f;
        self.headerView.overlayView.alpha = 0.0f;
    }
    else {
        self.headerView.bottomConstraint.constant = -contentOffset + offset;

        if (contentOffset < GKParallaxTableViewImageHeight) {
            self.headerView.overlayView.alpha = (contentOffset - offset) / GKParallaxTableViewTopBarHeight;
        }
        else {
            self.headerView.overlayView.alpha = 1.0f;
        }
    }
}

@end
