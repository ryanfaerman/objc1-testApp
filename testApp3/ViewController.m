//
//  ViewController.m
//  testApp3
//
//  Created by Ryan Faerman on 5/17/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)viewDidUnload
{
    [super viewDidUnload];
    // Release any retained subviews of the main view.
}

// Add two NSIntegers
- (NSInteger)Add:(NSInteger)term1 to:(NSInteger)term2 
{
  NSLog(@"%d + %d = %d", term1, term2, term1 + term2);
  return term1 + term2;
}

// Compare two NSIntegers
-(BOOL)Compare:(NSInteger)term1 to:(NSInteger)term2
{
  return term1 == term2;
}

// Append second NSString to the first
- (NSString*)Append:(NSString*)term1 with:(NSString*)term2
{
  NSMutableString *output = [[NSMutableString alloc] initWithString:term1];
  [output appendString:term2];
  return output;
}

// Show one of those fancy alerts
-(void)DisplayAlertWithString:(NSString *)message 
{
  UIAlertView *alertView = [[UIAlertView alloc] initWithTitle:@"Shalom" message:message delegate:nil cancelButtonTitle:@"Wonderful" otherButtonTitles:nil, nil];
  [alertView show];
}

// A good place as any for the code
- (void)viewWillAppear:(BOOL)animated
{
  // Append and display
  NSString *appendedString = [self Append:@"Hello " with:@"World!"];
  [self DisplayAlertWithString:appendedString];
  
  // Add and display
  NSNumber *addedNumber = [[NSNumber alloc] initWithInteger:[self Add:40 to:2]];
  NSString *addMessage = [[NSString alloc] initWithFormat:@"The number is %@", addedNumber];
  [self DisplayAlertWithString:addMessage];
  
  // Compare and display
  if ([self Compare:42 to:42]) {
    [self DisplayAlertWithString:@"43 == 43 ?\nSurvey Says: TRUE"];
  }
  
  [super viewWillAppear:animated];
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
  return (interfaceOrientation != UIInterfaceOrientationPortraitUpsideDown);
}

@end
