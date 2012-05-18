//
//  ViewController.h
//  testApp3
//
//  Created by Ryan Faerman on 5/17/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController
{
  
}

- (NSInteger)Add:(NSInteger)term1 to:(NSInteger)term2;
- (BOOL)Compare:(NSInteger)term1 to:(NSInteger)term2;
- (NSString*)Append:(NSString*)term1 with:(NSString*)term2;
- (void)DisplayAlertWithString:(NSString*)message;
@end
