//
//  main.m
//  DEMO_Service
//
//  Created by Egemen AYHAN on 23/01/15.
//  Copyright (c) 2015 BSG. All rights reserved.
//
#import <Foundation/Foundation.h>
#import <Cocoa/Cocoa.h>
#import "ServiceTest.h"
#import "AppDelegate.h"

int main(int argc, const char * argv[]) {
    
    ServiceTest *serviceProvider = [[ServiceTest alloc] init];
    
    NSRegisterServicesProvider(serviceProvider, @"DEMO_Service");
    [NSApplication sharedApplication];
    
    AppDelegate *appDelegate = [[AppDelegate alloc] init];
    [NSApp setDelegate:appDelegate];
    [NSApp run];
    
    NS_DURING
    [[NSRunLoop currentRunLoop] run];
    NS_HANDLER
    NSLog(@"%@", localException);
    NS_ENDHANDLER
    
    NSUpdateDynamicServices();
    
    return NSApplicationMain(argc, argv);
}
