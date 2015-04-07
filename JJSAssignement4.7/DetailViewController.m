//
//  DetailViewController.m
//  JJSAssignement4.7
//
//  Created by jsanto on 4/1/15.
//  Copyright (c) 2015 Jason Santo. All rights reserved.
//
#import "ArrayHolder.h"
#import "DetailViewController.h"
#import "WebSite.h"
#import "MainTableViewController.h"


@interface DetailViewController ()

@property (weak, nonatomic) IBOutlet UITextField *nameField;

@property (weak, nonatomic) IBOutlet UITextField *addressField;

@property (weak, nonatomic) IBOutlet UIButton *button;

@end

@implementation DetailViewController

-(void)viewWillAppear:(BOOL)animated
{

}


-(void)viewDidAppear:(BOOL)animated
{
    if(_selectedIndex == -1)
    {
        _button.titleLabel.text = @"Create";
    }
    else
    {
        _button.titleLabel.text = @"Update";
    }
}

- (IBAction)saveData:(id)sender
{
    if(_selectedIndex == -1)
    {
        
        WebSite *d1 = [[WebSite alloc] init];
        NSString *nameString =_nameField.text;
        NSString *addressString = _addressField.text;
        d1.name = nameString;
        d1.address = addressString;
        [[[ArrayHolder sharedSites] webSites] addObject:d1];

        MainTableViewController *mainTableViewController = [[MainTableViewController alloc] init];
        [self.navigationController pushViewController:mainTableViewController animated:YES];
    }
    else
    {
        
        WebSite *d1 = [[WebSite alloc] init];
        NSString *nameString =_nameField.text;
        NSString *addressString = _addressField.text;
        d1.name = nameString;
        d1.address = addressString;
        [[[ArrayHolder sharedSites]allArray] arrayByAddingObject:d1];
                      
        MainTableViewController *mainTableViewController = [[MainTableViewController alloc] init];
        [self.navigationController pushViewController:mainTableViewController animated:YES];

    
    }
    
    

}









@end
