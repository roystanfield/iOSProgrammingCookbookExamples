//
//  ViewController.m
//  1.8-SegmentedControl
//
//  Created by Roy Stanfield on 5/26/14.
//  Copyright (c) 2014 Roy Stanfield. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
@property (nonatomic, strong) UISegmentedControl *appleSegmentedControl;
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
    
    NSArray *segments = [[NSArray alloc] initWithObjects:@"iPhone", @"iPad", @"iPod", @"iMac", nil];
    self.appleSegmentedControl = [[UISegmentedControl alloc] initWithItems:segments];
    self.appleSegmentedControl.center = self.view.center;
    [self.view addSubview:self.appleSegmentedControl];
    [self.appleSegmentedControl addTarget:self action:@selector(segmentChanged:) forControlEvents:UIControlEventValueChanged];
}

- (void) segmentChanged:(UISegmentedControl *)paramSender
{
    if ([paramSender isEqual:self.appleSegmentedControl]) {
        NSInteger selectedSegmentIndex = [paramSender selectedSegmentIndex];
        
        NSString *selectedSegmentText = [paramSender titleForSegmentAtIndex:selectedSegmentIndex];
        
        NSLog(@"Segment %ld with %@ text is selected", (long)selectedSegmentIndex, selectedSegmentText);
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
