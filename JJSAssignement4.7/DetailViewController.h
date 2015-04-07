//
//  DetailViewController.h
//  JJSAssignement4.7
//
//  Created by jsanto on 4/1/15.
//  Copyright (c) 2015 Jason Santo. All rights reserved.
//
#import "ArrayHolder.h"
#import <UIKit/UIKit.h>


@interface DetailViewController : UIViewController

@property int selectedIndex;


@property (nonatomic, strong) ArrayHolder *items;


@end
