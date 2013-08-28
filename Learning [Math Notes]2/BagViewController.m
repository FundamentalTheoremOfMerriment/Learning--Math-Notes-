//
//  BagViewController.m
//  Learning [Math Notes]
//
//  Created by Chong Xu Wei on 27/8/13.
//  Copyright (c) 2013 warren. All rights reserved.
//

#import "BagViewController.h"

@interface BagViewController ()

@end

@implementation BagViewController

-(IBAction)moveToOverall:(id)sender
{
    [self performSegueWithIdentifier:@"ToOverall" sender:self];
}

-(IBAction)moveToSec1:(id)sender
{
    [self performSegueWithIdentifier:@"ToSec1" sender:self];
}

-(IBAction)moveToSec2:(id)sender
{
    [self performSegueWithIdentifier:@"ToSec2" sender:self];
}

-(IBAction)moveToSec3:(id)sender
{
    [self performSegueWithIdentifier:@"ToSec3" sender:self];
}

-(IBAction)moveToSec4:(id)sender
{
    [self performSegueWithIdentifier:@"ToSec4" sender:self];
}

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
    self.title = @"Level Selection";
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
