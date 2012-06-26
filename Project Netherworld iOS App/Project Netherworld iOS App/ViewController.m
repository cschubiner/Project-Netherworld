//
//  ViewController.m
//  Project Netherworld iOS App
//
//  Created by Clay Schubiner on 6/24/12.
//  Copyright (c) 2012 Stanford University. All rights reserved.
//

#import "ViewController.h"
#import "AppDelegate.h"
#import "FBConnect.h"
#import "DatabaseData.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)viewDidUnload
{
    [super viewDidUnload];
    // Release any retained subviews of the main view.
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    if ([[UIDevice currentDevice] userInterfaceIdiom] == UIUserInterfaceIdiomPhone) {
        return (interfaceOrientation != UIInterfaceOrientationPortraitUpsideDown);
    } else {
        return YES;
    }
}

- (IBAction)logoutButtonClicked:(id)sender {
    
    [[[DatabaseData sharedInstance]facebook]logout];
}
@end
