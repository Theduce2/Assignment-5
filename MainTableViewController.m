//
//  MainTableViewController.m
//  JJSAssignement4.7
//
//  Created by jsanto on 3/16/15.
//  Copyright (c) 2015 Jason Santo. All rights reserved.
//
#import "DetailViewController.h"
#import "ArrayHolder.h"
#import "WebDetailViewController.h"
#import "MainTableViewController.h"
#import "WebSite.h"

@interface MainTableViewController ()

@end

@implementation MainTableViewController

static NSString *simpleTableIdentifier = @"SimpleTableItem";

- (void)viewDidLoad
{
    [super viewDidLoad];

    
}


- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    
    return [[[ArrayHolder sharedSites]allArray] count];
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    static NSString *simpleTableIdentifier = @"SimpleTableItem";
    
   UITableViewCell *cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:simpleTableIdentifier];
        
    
    WebSite *t = [[[ArrayHolder sharedSites] allArray] objectAtIndex:indexPath.row];
    cell.textLabel.text = t.address;
    cell.backgroundColor = [UIColor whiteColor];
    return cell;
}

-(void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    //NSString *Jay =  [[[ArrayHolder sharedSites] webSites] objectAtIndex:indexPath.row];

    
    //WebSite *q = [[[ArrayHolder sharedSites] allArray] objectAtIndex:indexPath.row];
  //NSString *Jay = q.address;
    
    //WebDetailViewController *webDetailViewController = [[WebDetailViewController alloc] init];

   // webDetailViewController.URL = [NSMutableString stringWithFormat:@"http://%",Jay];
    
    
    
    //MainTableViewController *mainTableViewController = [[MainTableViewController alloc] init];
   // [self.navigationController pushViewController:webDetailViewController animated:YES];
}




- (IBAction)addNewItem:(id)sender
{
    DetailViewController *detailViewController = [[DetailViewController alloc] init];
    detailViewController.selectedIndex = -1;
    
    [self.navigationController pushViewController:detailViewController animated:YES];
    
    
}

- (IBAction)toggleEditingMode:(id)sender
{
     if(self.isEditing){
    
        [sender setTitle:@"Edit" forState:UIControlStateNormal];
         [self setEditing:NO animated:YES];
        
    }
       else{
           [sender setTitle:@"Done" forState:UIControlStateNormal];
          
           [self setEditing:YES animated:YES];
       }
 
}
- (void)didReceiveMemoryWarning


{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
