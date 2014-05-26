//
//  FirstViewController.m
//  1.12–UINavigationController
//
//  Created by Roy Stanfield on 5/26/14.
//  Copyright (c) 2014 Roy Stanfield. All rights reserved.
//

#import "FirstViewController.h"
#import "SecondViewController.h"

@interface FirstViewController ()
@property (nonatomic, strong) UIButton *displaySecondViewController;
@end

@implementation FirstViewController

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
    
    self.title = @"First View Controller";
    
    self.displaySecondViewController = [UIButton buttonWithType:UIButtonTypeSystem];
    [self.displaySecondViewController setTitle:@"Display Second View Controller" forState:UIControlStateNormal];
    [self.displaySecondViewController sizeToFit];
    self.displaySecondViewController.center = self.view.center;
    [self.displaySecondViewController addTarget:self action:@selector(displaySecondViewController:) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:self.displaySecondViewController];
    
}

- (void)displaySecondViewController:(id)paramSender
{
    SecondViewController *secondViewController = [[SecondViewController alloc] initWithNibName:nil bundle:NULL];
    [self.navigationController pushViewController:secondViewController animated:YES];
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
