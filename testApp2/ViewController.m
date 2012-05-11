//
//  ViewController.m
//  testApp2
//
//  Created by Ryan Faerman on 5/10/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
  [super viewDidLoad];
  self.view.backgroundColor = [UIColor blackColor];
  
  // Create the book title at the top of the screen.
  UILabel *bookTitle = [[UILabel alloc] initWithFrame:CGRectMake(0.0f, 0.0f, 768.0f, 60.0f)];
  
  bookTitle.text = @"Objective-C Programming, The Big Nerd Ranch Guide";
  bookTitle.textAlignment = UITextAlignmentCenter;
  bookTitle.backgroundColor = [UIColor darkGrayColor];
  bookTitle.textColor = [UIColor whiteColor];
  
  [self.view addSubview:bookTitle];
  
  // Author Label
  UILabel *authorLabel = [[UILabel alloc] initWithFrame:CGRectMake(0.0f, 90.0f, 200.0f, 30.0f)];
  
  authorLabel.text = @"Author:";
  authorLabel.textAlignment = UITextAlignmentRight;
  authorLabel.backgroundColor = [UIColor lightGrayColor];
  authorLabel.textColor = [UIColor redColor];
  
  [self.view addSubview:authorLabel];
  
  // Author Data
  UILabel *authorName = [[UILabel alloc] initWithFrame:CGRectMake(210.0f, 90.0f, 200.0f, 30.0f)];
  
  authorName.text = @"Aaron Hillegass";
  authorName.textAlignment = UITextAlignmentLeft;
  authorName.backgroundColor = [UIColor grayColor];
  authorName.textColor = [UIColor greenColor];
  
  [self.view addSubview:authorName];
  
  // Publish date Label
  UILabel *publishedLabel = [[UILabel alloc] initWithFrame:CGRectMake(0.0f, 120.0f, 200.0f, 30.0f)];
  
  publishedLabel.text = @"Published:";
  publishedLabel.textAlignment = UITextAlignmentRight;
  publishedLabel.backgroundColor = [UIColor colorWithRed:0.42 green:0.608 blue:0 alpha:1] /*#6b9b00*/;
  publishedLabel.textColor = [UIColor colorWithRed:0.894 green:0.224 blue:0.631 alpha:1] /*#e439a1*/;
  
  [self.view addSubview:publishedLabel];
  
  // Publish date Data
  UILabel *publishedDate = [[UILabel alloc] initWithFrame:CGRectMake(210.0f, 120.0f, 200.0f, 30.0f)];
  
  publishedDate.text = @"January 2012";
  publishedDate.textAlignment = UITextAlignmentLeft;
  publishedDate.backgroundColor = [UIColor colorWithRed:0 green:0.42 blue:0.325 alpha:1] /*#006b53*/;
  publishedDate.textColor = [UIColor colorWithRed:1 green:0.384 blue:0 alpha:1] /*#ff6200*/;
  
  [self.view addSubview:publishedDate];
  
  // summary Label
  UILabel *summaryLabel = [[UILabel alloc] initWithFrame:CGRectMake(0.0f, 160.0f, 200.0f, 30.0f)];
  
  summaryLabel.text = @"Summary:";
  summaryLabel.textAlignment = UITextAlignmentLeft;
  summaryLabel.backgroundColor = [UIColor blueColor];
  summaryLabel.textColor = [UIColor orangeColor];
  
  [self.view addSubview:summaryLabel];
  
  // Summary Text
  UILabel *summaryText = [[UILabel alloc] initWithFrame:CGRectMake(0.0f, 200.0f, 768.0f, 200.0f)];
  summaryText.text = @"This is an introductory book written by Aaron Hillegas, of the most experienced and authoritative voices in the iOS and Cocoa community. Compatible with Xcode 4.2, iOS 5, and Mac OS X 10.7 (Lion), this guide features short chapters and an engaging style to keep you motivated and moving forward. At the same time, Aaron's determination that you understand what you're doing - or at least why you're doing it - encourages you to think critically as a programmer.";
  summaryText.numberOfLines = 5;
  summaryText.textAlignment = UITextAlignmentCenter;
  summaryText.backgroundColor = [UIColor whiteColor];
  summaryText.textColor = [UIColor purpleColor];
  
  [self.view addSubview:summaryText];
  
  // Bunch of NSStrings
  NSString *foo = [[NSString alloc] initWithString:@"NSStrings"];
  NSString *bar = [[NSString alloc] initWithString:@"Objective-C"];
  NSString *baz = [[NSString alloc] initWithString:@"Boolean Logic"];
  NSString *moo = [[NSString alloc] initWithString:@"iOS 5"];
  NSString *goo = [[NSString alloc] initWithString:@"Xcode"];
  
  NSArray *topics = [[NSArray alloc] initWithObjects:foo, bar, baz, moo, goo, nil];
  
  NSMutableString *topicList = [[NSMutableString alloc] initWithString:@""];
  
  // Join the array elements into a string
  for(int i = 0; i < [topics count]; i++) {
    [topicList appendFormat:@"%@, ",[topics objectAtIndex:i]];
  }
  
  // topic Label
  UILabel *topicLabel = [[UILabel alloc] initWithFrame:CGRectMake(0.0f, 420.0f, 200.0f, 30.0f)];
  
  topicLabel.text = @"List of Items:";
  topicLabel.textAlignment = UITextAlignmentLeft;
  topicLabel.backgroundColor = [UIColor greenColor];
  topicLabel.textColor = [UIColor brownColor];
  
  [self.view addSubview:topicLabel];
  
  // topic Label
  UILabel *topicData = [[UILabel alloc] initWithFrame:CGRectMake(0.0f, 460.0f, 700.0f, 30.0f)];
  
  topicData.text = topicList;
  topicData.textAlignment = UITextAlignmentCenter;
  topicData.backgroundColor = [UIColor blackColor];
  topicData.textColor = [UIColor yellowColor];
  
  [self.view addSubview:topicData];
  
  
  
  
}

- (void)viewDidUnload
{
  [super viewDidUnload];
  // Release any retained subviews of the main view.
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
  return YES;
}

@end
