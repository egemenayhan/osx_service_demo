//
//  ViewController.m
//  DEMO_Service
//
//  Created by Egemen AYHAN on 23/01/15.
//  Copyright (c) 2015 BSG. All rights reserved.
//

#import "ViewController.h"

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    
}

- (void)setRepresentedObject:(id)representedObject {
    [super setRepresentedObject:representedObject];

    if (!self.code)
    {
        [self.lblText setStringValue:(NSString*)representedObject];
    }
}

@end
