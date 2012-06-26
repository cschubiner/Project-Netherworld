//
//  DatabaseData.h
//  Stanford Online
//
//  Created by Clay Schubiner on 9/2/11.
//  Copyright 2011 Stanford University. All rights reserved.
//	File created using Singleton XCode Template by Mugunth Kumar (http://blog.mugunthkumar.com)
//  More information about this template on the post http://mk.sg/89
//  Permission granted to do anything, commercial/non-commercial with this file apart from removing the line/URL above

#import <Foundation/Foundation.h>
#import "FBConnect.h"

@interface DatabaseData : NSObject {
    Facebook * facebook;

}

+ (DatabaseData*) sharedInstance;

@property (nonatomic, retain) Facebook *facebook;

@end
