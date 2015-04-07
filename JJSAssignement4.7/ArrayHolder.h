//
//  ArrayHolder.h
//  JJSAssignement4.7
//
//  Created by jsanto on 3/25/15.
//  Copyright (c) 2015 Jason Santo. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface ArrayHolder : NSObject

@property (nonatomic, readonly) NSArray *allArray;
@property (nonatomic, strong) NSMutableArray *webSites;

+ (instancetype) sharedSites;





@end
