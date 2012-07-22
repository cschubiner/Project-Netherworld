//
//  AppDelegate.h
//  Project Netherworld iOS App
//
//  Created by Clay Schubiner on 6/24/12.
//  Copyright (c) 2012 Stanford University. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "FBConnect.h"
#import "DataSet.h"
//test

@interface AppDelegate : UIResponder <UIApplicationDelegate,FBSessionDelegate> {
    Facebook *facebook;
    DataSet *apiData;
    NSMutableDictionary *userPermissions;

}

@property (strong, nonatomic) UIWindow *window;
@property (nonatomic, retain) Facebook *facebook;
@property (nonatomic, retain) DataSet *apiData;

@property (nonatomic, retain) NSMutableDictionary *userPermissions;

@end
