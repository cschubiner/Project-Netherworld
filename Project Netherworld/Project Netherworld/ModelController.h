//
//  ModelController.h
//  Project Netherworld
//
//  Created by Jeff Grimes on 6/24/12.
//  Copyright (c) 2012 University of Pennsylvania. All rights reserved.
//

#import <UIKit/UIKit.h>

@class DataViewController;

@interface ModelController : NSObject <UIPageViewControllerDataSource>

- (DataViewController *)viewControllerAtIndex:(NSUInteger)index storyboard:(UIStoryboard *)storyboard;
- (NSUInteger)indexOfViewController:(DataViewController *)viewController;

@end
