//
//  DataModel.h
//  JJSAssignement4.7
//
//  Created by jsanto on 3/18/15.
//  Copyright (c) 2015 Jason Santo. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface DataModel : NSObject

{
    NSArray *webSites;
    
}

@property(nonatomic,retain) NSArray *webSites;

+ (DataModel*)sharedSites;


@end
