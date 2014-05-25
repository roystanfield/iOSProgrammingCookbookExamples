//
//  ViewController.m
//  1.1-DisplayingAlerts
//
//  Created by Roy Stanfield on 5/25/14.
//  Copyright (c) 2014 Roy Stanfield. All rights reserved.
//

#import "ViewController.h"

@interface ViewController () <UIAlertViewDelegate>

@end

@implementation ViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

/*
// Super simple alert

- (void)viewDidAppear:(BOOL)paramAnimated
{
    [super viewDidAppear:paramAnimated];
    
    UIAlertView *alertView = [[UIAlertView alloc] initWithTitle:@"Alert"
                                                        message:@"You have been delivered an alert!"
                                                       delegate:nil
                                              cancelButtonTitle:@"Cancel"
                                              otherButtonTitles:@"OK", nil];
    [alertView show];
}
*/


// An alert where we can read the alert buttons

- (void)viewDidAppear:(BOOL)animated
{
    [super viewDidAppear:animated];
    
    self.view.backgroundColor = [UIColor whiteColor];
    
    NSString *message = @"Are you sure you want to open this link in Safari?";
    UIAlertView *alertView = [[UIAlertView alloc] initWithTitle:@"Open Link"
                                                        message:message
                                                       delegate:self
                                              cancelButtonTitle:[self noButtonTitle]
                                              otherButtonTitles:[self yesButtonTitle], nil];
    [alertView show];
}

- (NSString *) yesButtonTitle
{
    return @"Yes";
}

- (NSString *) noButtonTitle
{
    return @"No";
}

- (void)alertView:(UIAlertView *)alertView clickedButtonAtIndex:(NSInteger)buttonIndex
{
    NSString *buttonTitle = [alertView buttonTitleAtIndex:buttonIndex];
    
    if ([buttonTitle isEqualToString:[self yesButtonTitle]]) {
        NSLog(@"User pressed the Yes button");
    }
    else if ([buttonTitle isEqualToString:[self noButtonTitle]]) {
        NSLog(@"User pressed the No button");
    }
}


- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
