//
//  DataViewController.h
//  Project Netherworld
//
//  Created by Jeff Grimes on 6/24/12.
//  Copyright (c) 2012 University of Pennsylvania. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface DataViewController : UIViewController

@property (strong, nonatomic) IBOutlet UILabel *dataLabel;
@property (strong, nonatomic) id dataObject;

@end
