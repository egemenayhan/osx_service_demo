//
//  ServiceTest.m
//  DEMO_Service
//
//  Created by Egemen AYHAN on 23/01/15.
//  Copyright (c) 2015 BSG. All rights reserved.
//

#import "ServiceTest.h"
#import "ViewController.h"

@implementation ServiceTest

-(void)getInputService:(NSPasteboard *)pboard
              userData:(NSString *)data
                 error:(NSString **)error
{
    NSString *pboardString;
    NSArray *types;
    
    types = [pboard types];
    
    if (![types containsObject:NSStringPboardType] || !(pboardString = [pboard stringForType:NSStringPboardType])) {
        *error = NSLocalizedString(@"Error: Pasteboard doesn't contain a string.",
                                   @"Pasteboard couldn't give string.");
        return;
    }
    else
    {
        NSStoryboard *storyboard = [NSStoryboard storyboardWithName:@"Main" bundle:nil];
        NSWindowController *myWindow  = [storyboard instantiateControllerWithIdentifier:@"startWindow"];
        [myWindow showWindow:self];
        //ViewController *cont = [[ViewController alloc]init];
        //cont.code = pboardString;
        //[myWindow setContentViewController:cont];
        
        NSLog(@"*************%@######",pboardString);
        [[NSNotificationCenter defaultCenter] postNotificationName:@"SHOW" object:nil];
    }
}

@end
