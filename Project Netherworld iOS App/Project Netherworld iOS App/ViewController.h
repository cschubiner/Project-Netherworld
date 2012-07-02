//
//  ViewController.h
//  Project Netherworld iOS App
//
//  Created by Clay Schubiner on 6/24/12.
//  Copyright (c) 2012 Stanford University. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "FBConnect.h"
#import <CoreLocation/CoreLocation.h>


@interface ViewController : UIViewController<FBRequestDelegate,
FBDialogDelegate,
UITableViewDataSource,
UITableViewDelegate,
CLLocationManagerDelegate>
{
    int currentAPICall;

}

typedef enum apiCall {
    kAPILogout,
    kAPIGraphUserPermissionsDelete,
    kDialogPermissionsExtended,
    kDialogRequestsSendToMany,
    kAPIGetAppUsersFriendsNotUsing,
    kAPIGetAppUsersFriendsUsing,
    kAPIFriendsForDialogRequests,
    kDialogRequestsSendToSelect,
    kAPIFriendsForTargetDialogRequests,
    kDialogRequestsSendToTarget,
    kDialogFeedUser,
    kAPIFriendsForDialogFeed,
    kDialogFeedFriend,
    kAPIGraphUserPermissions,
    kAPIGraphMe,
    kAPIGraphUserFriends,
    kDialogPermissionsCheckin,
    kDialogPermissionsCheckinForRecent,
    kDialogPermissionsCheckinForPlaces,
    kAPIGraphSearchPlace,
    kAPIGraphUserCheckins,
    kAPIGraphUserPhotosPost,
    kAPIGraphUserVideosPost,
} apiCall;

- (IBAction)logoutButtonClicked:(id)sender;
- (IBAction)postPhotoButton:(id)sender;
- (IBAction)postVideoButton:(id)sender;



@end
