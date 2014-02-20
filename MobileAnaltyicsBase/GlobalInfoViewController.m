//
//  GlobalInfoViewController.m
//  MobileAnaltyicsBase
//
//  Created by Sinziana Gafitanu on 2/16/14.
//  Copyright (c) 2014 Sinziana Gafitanu. All rights reserved.
//

#import "GlobalInfoViewController.h"

@interface GlobalInfoViewController ()

@end

@implementation GlobalInfoViewController

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
    self.screenName = @"Global Info Controller";
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
