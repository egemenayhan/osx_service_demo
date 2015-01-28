//
//  AppDelegate.m
//  DEMO_Service
//
//  Created by Egemen AYHAN on 23/01/15.
//  Copyright (c) 2015 BSG. All rights reserved.
//

#import "AppDelegate.h"

@interface AppDelegate ()

@end

@implementation AppDelegate

- (void)applicationDidFinishLaunching:(NSNotification *)aNotification {
    [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(show)
                                                 name:@"SHOW" object:nil];
    // Insert code here to initialize your application
}

-(void)show
{
    NSStoryboard *storyboard = [NSStoryboard storyboardWithName:@"Main" bundle:nil];
    NSWindowController *myWindow  = [storyboard instantiateControllerWithIdentifier:@"startWindow"];
    [myWindow showWindow:self];
}

- (void)applicationWillTerminate:(NSNotification *)aNotification {
    // Insert code here to tear down your application
}

@end
