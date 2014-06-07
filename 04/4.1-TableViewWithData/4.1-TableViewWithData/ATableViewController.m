//
//  ATableViewController.m
//  4.1-TableViewWithData
//
//  Created by Roy Stanfield on 6/7/14.
//  Copyright (c) 2014 Roy Stanfield. All rights reserved.
//

#import "ATableViewController.h"

static NSString *TableViewCellIdentifier = @"MyCells";

@interface ATableViewController () <UITableViewDataSource>
@property (nonatomic, strong) UITableView *myTableView;
@end

@implementation ATableViewController


- (void)viewDidLoad
{
    [super viewDidLoad];

    self.myTableView = [[UITableView alloc] initWithFrame:self.view.bounds style:UITableViewStylePlain];
    
    [self.myTableView registerClass:[UITableViewCell class] forCellReuseIdentifier:TableViewCellIdentifier];
    self.myTableView.dataSource = self;
    
    self.myTableView.autoresizingMask = UIViewAutoresizingFlexibleWidth | UIViewAutoresizingFlexibleHeight;
    [self.view addSubview:self.myTableView];
}

#pragma mark - Table view data source

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
        cell = [tableView dequeueReusableCellWithIdentifier:TableViewCellIdentifier forIndexPath:indexPath];
        cell.textLabel.text = [NSString stringWithFormat:@"Section %ld, Cell %ld", (long)indexPath.section, (long)indexPath.row];
    }
    return cell;
}


@end
