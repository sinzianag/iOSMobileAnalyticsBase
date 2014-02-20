//
//  SimpleActionViewController.m
//  MobileAnaltyicsBase
//
//  Created by Sinziana Gafitanu on 2/16/14.
//  Copyright (c) 2014 Sinziana Gafitanu. All rights reserved.
//

#import "SimpleActionViewController.h"

@interface SimpleActionViewController ()

@end

@implementation SimpleActionViewController

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
	self.screenName = @"Simple Action View Controller";
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
