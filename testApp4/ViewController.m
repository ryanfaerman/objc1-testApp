//
//  ViewController.m
//  testApp4
//
//  Created by Ryan Faerman on 5/24/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import "ViewController.h"

#define BUTTON_LOGIN 0
#define BUTTON_DATE 1
#define BUTTON_INFO 2

@interface ViewController ()

@end

@implementation ViewController

// Make these available throughout this class
UILabel *infoLabel;
UILabel *messageLabel;
UITextField *usernameField;

- (void)viewDidLoad
{
  // Username label
  UILabel *usernameLabel = [[UILabel alloc] initWithFrame:CGRectMake(0.0f, 10.0f, 100.0f, 30.0f)];
  usernameLabel.text = @"Username:";
  usernameLabel.textAlignment = UITextAlignmentRight;
  usernameLabel.backgroundColor = [UIColor clearColor];
  [self.view addSubview:usernameLabel];
  
  // TextField for Username
  usernameField = [[UITextField alloc] initWithFrame:CGRectMake(110.0f, 10.0f, 200.0f, 30.0f)];
  usernameField.borderStyle = UITextBorderStyleRoundedRect;
  usernameField.returnKeyType = UIReturnKeyDone; // Change return key to "done"
  usernameField.delegate = self; // Setup done handler
  [self.view addSubview:usernameField];
  
  // Login Button
  UIButton *loginButton = [UIButton buttonWithType:UIButtonTypeRoundedRect];
  loginButton.frame = CGRectMake(210.0f, 50.0f, 100.0f, 30.0f);
  loginButton.tag = BUTTON_LOGIN;
  [loginButton setTitle:@"Login" forState:UIControlStateNormal];
  [loginButton addTarget:self action:@selector(onClick:) forControlEvents:UIControlEventTouchUpInside];
  [self.view addSubview:loginButton];
  
  // Setup message with default text
  messageLabel = [[UILabel alloc] initWithFrame:CGRectMake(0.0f, 100.0f, 320.0f, 80.0f)];
  messageLabel.text = @"Please Enter Username";
  messageLabel.textAlignment = UITextAlignmentCenter;
  messageLabel.backgroundColor = [UIColor grayColor];
  messageLabel.textColor = [UIColor whiteColor];
  [self.view addSubview:messageLabel];
  
  // Date Button
  UIButton *dateButton = [UIButton buttonWithType:UIButtonTypeRoundedRect];
  dateButton.frame = CGRectMake(10.0f, 220.0f, 150.0f, 30.0f);
  dateButton.tag = BUTTON_DATE;
  [dateButton setTitle:@"Show Date" forState:UIControlStateNormal];
  [dateButton addTarget:self action:@selector(onClick:) forControlEvents:UIControlEventTouchUpInside];
  [self.view addSubview:dateButton];
  
  // Info button
  UIButton *infoButton = [UIButton buttonWithType:UIButtonTypeInfoDark];
  infoButton.frame = CGRectMake(10.0f, 420.0f, 20.0f, 20.0f);
  infoButton.tag = BUTTON_INFO;
  [infoButton addTarget:self action:@selector(onClick:) forControlEvents:UIControlEventTouchUpInside];
  [self.view addSubview:infoButton];
  
  // Initialize info label
  infoLabel = [[UILabel alloc] initWithFrame:CGRectMake(40.0f, 400.0f, 250.0f, 60.0f)];
  infoLabel.backgroundColor = [UIColor clearColor];
  infoLabel.numberOfLines = 2;
  
  
  
  [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)onClick:(UIButton*)button
{
  if (button.tag == BUTTON_LOGIN) {
    if(usernameField.text.length == 0)
    {
      // username is blank
      messageLabel.text = @"Username cannot be empty";
    } else {
      // username is not blank
      messageLabel.text = [[NSString alloc] initWithFormat:@"User: %@ has logged in", usernameField.text];
    }
  } else if(button.tag == BUTTON_DATE) {
    // determine date/time and alert
    
    NSDate *dateTime = [NSDate date];
    NSDateFormatter *dateFormatter = [[NSDateFormatter alloc] init];
    [dateFormatter setDateFormat:@"MMM d, yyyy hh:mm:ss aaa zzzz"];
    
    UIAlertView *alertView = [[UIAlertView alloc] initWithTitle:@"Datetime" message:[dateFormatter stringFromDate:dateTime] delegate:nil cancelButtonTitle:@"Thanks!" otherButtonTitles:nil];
    [alertView show];
  } else if (button.tag == BUTTON_INFO) {
    // set info and show
    infoLabel.text = @"This application was created by: Ryan Faerman";
    [self.view addSubview:infoLabel];
  }
 
}

- (BOOL)textFieldShouldReturn:(UITextField *)textField
{
  if(textField.text.length > 0)
  {
    // username isn't blank, update label
    messageLabel.text = [[NSString alloc] initWithFormat:@"User: %@ has logged in", textField.text];
  }
  // dismiss the keyboard
  [textField resignFirstResponder];
  return YES;
}

- (void)viewDidUnload
{
    [super viewDidUnload];
    // Release any retained subviews of the main view.
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
  return (interfaceOrientation != UIInterfaceOrientationPortraitUpsideDown);
}

@end
