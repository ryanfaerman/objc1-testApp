//
//  AppDelegate.m
//  testApp
//
//  Created by Ryan Faerman on 5/3/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import "AppDelegate.h"

@implementation AppDelegate

@synthesize window = _window;

- (void)dealloc
{
  [_window release];
    [super dealloc];
}

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{
  self.window = [[[UIWindow alloc] initWithFrame:[[UIScreen mainScreen] bounds]] autorelease];
  // Override point for customization after application launch.
  self.window.backgroundColor = [UIColor whiteColor];
  [self.window makeKeyAndVisible];
  
  // First, we'll start off talking about monkeys because monkeys are awesome.
  float bananas = 14.5;
  NSLog(@"There are exactly %f bananas, but to a monkey, that means there are %d", bananas, (int)bananas);
  
  // Our monkeys seem to be hungry.
  bool hungryMonkeys = YES;
  int monkeyCount = 10;
  
  // Can we feed all of our monkeys?
  if(hungryMonkeys && monkeyCount <= bananas) {
    NSLog(@"Looks like we have a bunch of hungry monkeys that we can feed!");
  } else {
    NSLog(@"Monkeys that aren't hungry? What is the world coming to?");
  }
  
  // After being fed, the monkeys like to jump on the bed.
  for(int i = 10; i > 0; i--) {
    NSLog(@"%d monkey(s) jumping on the bed, one fell off and bumped his head.", i);
    NSLog(@"Went to the doctor and the doctor said, NO MORE MONKEYS JUMPING ON THE BED!");
  }
  
  // Enough about monkeys. Time for a pirate song!
  // What do pirates like more than buried treasure?
  // RUM and drinking songs!
  for (int i = 5; i > 0; i--) {
    NSLog(@"%d bottles of rum on the wall,", i);
    NSLog(@"%d bottles of rum...", i);
    NSLog(@"Take one down, pass it around... %d bottles of rum on the wall!", i-1);
    
    // Our pirates are getting a little excited because they love being pirates.
    for (int j = 0; j < 3; j++) {
      NSLog(@"Yoho! Yoho! A pirate's life for me!");
    }
  }
  
  // Somtimes, the pirate captain likes to impress his sea-dog mates
  // with his impressive counting ability.
  NSLog(@"I can count... All the way... To shfifty-five!");
  int k = 0;
  while (k <= 55) {
    NSLog(@"I know %d", k);
    k += 5;
  }
  NSLog(@"See, I told you I could count to shfifty-five!");
  
  
  
  return YES;
}

- (void)applicationWillResignActive:(UIApplication *)application
{
  // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
  // Use this method to pause ongoing tasks, disable timers, and throttle down OpenGL ES frame rates. Games should use this method to pause the game.
}

- (void)applicationDidEnterBackground:(UIApplication *)application
{
  // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later. 
  // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
}

- (void)applicationWillEnterForeground:(UIApplication *)application
{
  // Called as part of the transition from the background to the inactive state; here you can undo many of the changes made on entering the background.
}

- (void)applicationDidBecomeActive:(UIApplication *)application
{
  // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
}

- (void)applicationWillTerminate:(UIApplication *)application
{
  // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
}

@end
