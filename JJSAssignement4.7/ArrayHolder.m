//
//  ArrayHolder.m
//  JJSAssignement4.7
//
//  Created by jsanto on 3/25/15.
//  Copyright (c) 2015 Jason Santo. All rights reserved.
//


#import "ArrayHolder.h"
#import "WebSite.h"



@implementation ArrayHolder

+ (instancetype)sharedSites
    {
    static ArrayHolder *sharedSites =nil;
        
    if (!sharedSites)
    {
        sharedSites = [[self alloc] initPrivate];
    }
    return sharedSites;
}


- (instancetype)init
{
    [NSException raise:@"Singleton" format:@"Use +[ArrayHolder sharedSites]"];

    return nil;
}
    
- (instancetype)initPrivate
    {
        self = [super init];
        if (self)
        {
            _webSites = [[NSMutableArray alloc] init];
            
            WebSite *s1 = [[WebSite alloc] init];
            s1.name = @"Cnn";
            s1.address = @"www.cnn.com";
            [_webSites addObject:s1];
            
            WebSite *s2 = [[WebSite alloc] init];
            s2.name = @"Google";
            s2.address = @"www.google.com";
            [_webSites addObject:s2];
            
            WebSite *s3 = [[WebSite alloc] init];
            s3.name = @"MSNBC";
            s3.address = @"www.msnbc.com";
            [_webSites addObject:s3];
            
            WebSite *s4 = [[WebSite alloc] init];
            s4.name = @"Pitt";
            s4.address =@"www.pitt.edu";
            [_webSites addObject:s4];
            
            WebSite *s5 = [[WebSite alloc] init];
            s5.name = @"www.yahoo.com";
            s5.address = @"www.yahoo.com";
            [_webSites addObject:s5];
        }
        return self;
        
    }
-(NSArray *)allArray
    {
        return self.webSites;
    }


@end