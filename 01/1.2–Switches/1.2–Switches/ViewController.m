//
//  ViewController.m
//  1.2–Switches
//
//  Created by Roy Stanfield on 5/25/14.
//  Copyright (c) 2014 Roy Stanfield. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
@property (nonatomic, strong) UISwitch *mainSwitch;
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
    
    self.mainSwitch = [[UISwitch alloc] initWithFrame:CGRectMake(100, 100, 0, 0)];
    [self.mainSwitch setOn:YES];
    [self.view addSubview:self.mainSwitch];
    
    [self.mainSwitch addTarget:self
                        action:@selector(switchIsChanged:)
              forControlEvents:UIControlEventValueChanged];
}

- (void)switchIsChanged:(UISwitch *)paramSender
{
    NSLog(@"Sender is = %@", paramSender);
    
    if ([self.mainSwitch isOn]) {
        NSLog(@"The switch is on.");
    } else {
        NSLog(@"The switch is off.");
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
