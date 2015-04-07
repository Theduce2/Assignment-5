//
//  DataModel.m
//  JJSAssignement4.7
//
//  Created by jsanto on 3/18/15.
//  Copyright (c) 2015 Jason Santo. All rights reserved.
//

#import "DataModel.h"

static DataModel *sharedSites = nil;

@implementation DataModel

@synthesize webSites;



//Creates a new object if it does not exist
+(DataModel*)sharedSites
{
    if (sharedSites == nil){
        sharedSites = [[super allocWithZone:NULL]init];
    }
    return sharedSites;
}

//don't allocate new object
+(id)allocWithZone:(struct _NSZone *)zone
{
    return sharedSites;
}

//Prevent multiple copy
-(id)copyWithZone:(NSZone *)zone{
    return self;
}
@end
