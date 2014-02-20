//
//  GlobalInfoViewController.m
//  MobileAnaltyicsBase
//
//  Created by Sinziana Gafitanu on 2/16/14.
//  Copyright (c) 2014 Sinziana Gafitanu. All rights reserved.
//

#import "GlobalInfoViewController.h"
#import "InterfaceDimValues.h"

static NSString* const GLOBAL_ACCOUNT_ID = @"accountID";
static NSString* const GLOBAL_DEBUG_ENABLED = @"debugEnabled";

@interface GlobalInfoViewController ()

@property (nonatomic, strong) UISwitch *mySwitch;

@end

@implementation GlobalInfoViewController

@synthesize mySwitch;

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    self.screenName = @"Global Info Controller";
    [self addAccountField];
    [self addDebugSwitch];
}

#pragma mark - Add the interface

-(void) addAccountField{
    
    UILabel *accountLabel = [[UILabel alloc] initWithFrame:[InterfaceDimValues getFrameFor:kSimpleLabel andOrder:0]];
    UITextField *accountTextField = [[UITextField  alloc] initWithFrame:
                              [InterfaceDimValues getFrameFor:kSimpleTextBox andOrder:0]];
    // Set text value
    NSString* savedValue = [[NSUserDefaults standardUserDefaults] stringForKey:GLOBAL_ACCOUNT_ID];
    accountLabel.text = @"AccountID";
    
    if(savedValue != nil && [savedValue length] > 0)
        accountTextField.text = savedValue;
    else
        accountTextField.placeholder = @"Add account here!";
    
    // Set the font
    [accountLabel setFont:[UIFont italicSystemFontOfSize:12]];
    [accountTextField setFont:[UIFont boldSystemFontOfSize:10]];
    
    // Add some style
     accountTextField.borderStyle = UITextBorderStyleRoundedRect;
    
    // Add the label and the textField to view
    [self.view addSubview:accountLabel];
    [self.view addSubview:accountTextField];
    
    
    accountTextField.delegate = self;
}

-(void) addDebugSwitch {
    // init
    UILabel *debugLabel = [[UILabel alloc] initWithFrame:[InterfaceDimValues getFrameFor:kSimpleLabel andOrder:1]];
    self.mySwitch = [[UISwitch alloc] initWithFrame:[InterfaceDimValues getFrameFor:kSimpleSwitch andOrder:1]];
    
    // value
     BOOL debugSwitch = [[NSUserDefaults standardUserDefaults] boolForKey:GLOBAL_DEBUG_ENABLED];
    [self.mySwitch setOn:debugSwitch];
    debugLabel.text = @"Debug Enabled";

    //Config
    [self.mySwitch addTarget:self
                      action:@selector(switchIsChanged:)
            forControlEvents:UIControlEventValueChanged];
    [debugLabel setFont:[UIFont italicSystemFontOfSize:12]];
    
    // Add to SubView
    [self.view addSubview:debugLabel];
    [self.view addSubview:self.mySwitch];
}

#pragma mark - Switch
- (void) switchIsChanged:(UISwitch *)paramSender{
    
    if ([paramSender isOn]){
        [[NSUserDefaults standardUserDefaults] setBool:YES forKey:GLOBAL_DEBUG_ENABLED];
    } else {
        [[NSUserDefaults standardUserDefaults] setBool:NO forKey:GLOBAL_DEBUG_ENABLED];
    }
}

#pragma mark - TextField Delegates

-(void)textFieldDidBeginEditing:(UITextField *)textField{
    NSLog(@"Text field did begin editing");
}

-(void)textFieldDidEndEditing:(UITextField *)textField{
    [[NSUserDefaults standardUserDefaults] setObject:textField.text forKey:GLOBAL_ACCOUNT_ID];
}

-(BOOL) textFieldShouldReturn:(UITextField *)textField{
    [textField resignFirstResponder];
    return YES;
}


#pragma mark - Others

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
}

@end
