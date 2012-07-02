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

- (IBAction)postPhotoButton:(id)sender {
    /*
     * Graph API: Upload a photo. By default, when using me/photos the photo is uploaded
     * to the application album which is automatically created if it does not exist.
     */
        currentAPICall = kAPIGraphUserPhotosPost;

        // Download a sample photo
        NSURL *url = [NSURL URLWithString:@"http://www.facebook.com/images/devsite/iphone_connect_btn.jpg"];
        NSData *data = [NSData dataWithContentsOfURL:url];
        UIImage *img  = [[UIImage alloc] initWithData:data];
        NSMutableDictionary *params = [NSMutableDictionary dictionaryWithObjectsAndKeys:
                                       img, @"picture",
                                       nil];
        
        
        [[[DatabaseData sharedInstance] facebook] requestWithGraphPath:@"me/photos"
                                        andParams:params
                                    andHttpMethod:@"POST"
                                      andDelegate:self];
}

- (IBAction)postVideoButton:(id)sender {
    currentAPICall = kAPIGraphUserVideosPost;
    
    // Download a sample video
    NSURL *url = [NSURL URLWithString:@"https://developers.facebook.com/attachment/sample.mov"];
    NSData *data = [NSData dataWithContentsOfURL:url];
    NSMutableDictionary *params = [NSMutableDictionary dictionaryWithObjectsAndKeys:
                                   data, @"video.mov",
                                   @"video/quicktime", @"contentType",
                                   @"Video Test Title", @"title",
                                   @"Video Test Description", @"description",
								   nil];
    
	[[[DatabaseData sharedInstance] facebook] requestWithGraphPath:@"me/videos"
                                    andParams:params
                                andHttpMethod:@"POST"
                                  andDelegate:self];
}
@end










