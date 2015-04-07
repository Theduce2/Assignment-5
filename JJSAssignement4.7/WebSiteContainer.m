//
//  WebSiteContainer.m
//  JJSAssignement4.7
//
//  Created by jsanto on 3/23/15.
//  Copyright (c) 2015 Jason Santo. All rights reserved.
//

#import "WebSiteContainer.h"
@implementation WebSiteContainerSingleton
@synthesize sitesData;

static WebSiteContainerSingleton *sharedWebSiteContainerSingleton;

+ (WebSiteContainerSingleton *) sharedWebSiteContainerSingleton

{
    @synchronized(self){
        if(sharedWebSiteContainerSingleton == nil){
            sharedWebSiteContainerSingleton = [[self alloc] initPrivate];
        }
        }
    return sharedWebSiteContainerSingleton;
}

- (instancetype)initPrivate
    {
        sitesData=[WebSiteContainerSingleton sharedWebSiteContainerSingleton];
        sitesData = [NSMutableArray arrayWithObjects:@"WWW.CNN.COM",@"WWW.GOOGLE.COM",@"WWW.YAHOO.COM",@"WWW.MSNBC.COM",@"WWW.GOOGLE.COM",nil];
        
        return sitesData;
    }



@end
