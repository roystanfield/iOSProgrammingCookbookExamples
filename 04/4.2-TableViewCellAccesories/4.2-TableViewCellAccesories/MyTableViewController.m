//
//  MyTableViewController.m
//  4.2-TableViewCellAccesories
//
//  Created by Roy Stanfield on 6/7/14.
//  Copyright (c) 2014 Roy Stanfield. All rights reserved.
//

#import "MyTableViewController.h"

static NSString *MyCellIdentifier = @"MyCells";

@interface MyTableViewController ()
@property (strong, nonatomic) UITableView *myTableView;
@end

@implementation MyTableViewController


- (void)viewDidLoad
{
    [super viewDidLoad];
    
    self.myTableView = [[UITableView alloc] initWithFrame:self.view.bounds style:UITableViewStylePlain];
    [self.myTableView registerClass:[UITableViewCell class] forCellReuseIdentifier:MyCellIdentifier];
    self.myTableView.dataSource = self;
    self.myTableView.autoresizingMask = UIViewAutoresizingFlexibleWidth | UIViewAutoresizingFlexibleHeight;
    
    [self.view addSubview:self.myTableView];
    
}

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    if ([tableView isEqual:self.myTableView]) {
        return 3;
    }
    return 0;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    if ([tableView isEqual:self.myTableView]) {
        switch (section) {
            case 0:{
                return 3;
                break;
            }
            case 1:{
                return 5;
                break;
            }
            case 2:{
                return 8;
                break;
            }
        }
    }
    return 0;
}

- (UITableViewCell *) tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    UITableViewCell *cell = nil;
    
    if ([tableView isEqual:self.myTableView]) {
        cell = [tableView dequeueReusableCellWithIdentifier:MyCellIdentifier forIndexPath:indexPath];
        cell.textLabel.text = [NSString stringWithFormat:@"Section %ld, Cell %ld", (long)indexPath.section, (long)indexPath.row];
        cell.accessoryType = UITableViewCellAccessoryDetailDisclosureButton;
    }
    return cell;
}


// This doesn't seem to work.
- (void)tableView:(UITableView *)tableView accessoryButtonTappedForRowWithIndexPath:(NSIndexPath *)indexPath
{
    NSLog(@"Accessory button is tapped for cell at index path = %@", indexPath);
    
    UITableViewCell *ownerCell = [tableView cellForRowAtIndexPath:indexPath];
    NSLog(@"Cell Title = %@", ownerCell.textLabel.text);
}





@end
