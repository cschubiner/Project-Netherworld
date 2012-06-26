//
//  DatabaseData.m
//  Stanford Online
//
//  Created by Clay Schubiner on 9/2/11.
//  Copyright 2011 Stanford University. All rights reserved.
//	File created using Singleton XCode Template by Mugunth Kumar (http://blog.mugunthkumar.com)
//  More information about this template on the post http://mk.sg/89	
//  Permission granted to do anything, commercial/non-commercial with this file apart from removing the line/URL above

#import "DatabaseData.h"

static DatabaseData *_instance;
@implementation DatabaseData
@synthesize facebook;

#pragma mark -
#pragma mark Custom Methods


#pragma mark -
#pragma mark Singleton Methods

+ (DatabaseData*)sharedInstance
{
	@synchronized(self) {
		
        if (_instance == nil) {
			
            _instance = [[self alloc] init];
            
            // Allocate/initialize any member variables of the singleton class here
            // example
			//_instance.member = @"";
            
        }
    }
    return _instance;
}



+ (id)allocWithZone:(NSZone *)zone

{	
    @synchronized(self) {
		
        if (_instance == nil) {
			
            _instance = [super allocWithZone:zone];			
            return _instance;  // assignment and return on first allocation
        }
    }
	
    return nil; //on subsequent allocation attempts return nil	
}


- (id)copyWithZone:(NSZone *)zone
{
    return self;	
}



@end
