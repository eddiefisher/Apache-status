//
//  AppDelegate.m
//  Apache status
//
//  Created by Eddie Fisher on 8/2/12.
//  Copyright (c) 2012 Eddie Fisher. All rights reserved.
//

#import "AppDelegate.h"

@implementation AppDelegate

- (void)awakeFromNib {
    statusItem = [[[NSStatusBar systemStatusBar] statusItemWithLength:NSVariableStatusItemLength] retain];
    NSBundle *bundle = [NSBundle  mainBundle];
    statusStartImage = [[NSImage alloc] initWithContentsOfFile:[bundle pathForResource:@"start" ofType:@"png" ]];
    statusStopImage = [[NSImage alloc] initWithContentsOfFile:[bundle pathForResource:@"stop" ofType:@"png" ]];
    
    [statusItem setImage:statusStartImage];
    [statusItem setAlternateImage:statusStopImage];
    [statusItem setMenu:statusMenu];
    [statusItem setToolTip:@"you do not need this..."];
    [statusItem setHighlightMode:YES];
}

- (void)dealloc {
    [statusStartImage release];
    [statusStopImage release];
    [super dealloc];
}

- (IBAction)apacheStart:(id)sender {
    NSLog(@"apache start");
    
    statusMenuItem = [[NSMenuItem alloc] initWithTitle:@"Status: start" action:NO keyEquivalent:@""];
    [statusMenuItem setTarget:self];
    [statusMenu removeItemAtIndex:3];
    [statusMenu insertItem:statusMenuItem atIndex:3];
    
}

- (IBAction)apacheStop:(id)sender {
    NSLog(@"apache stop");
    
    statusMenuItem = [[NSMenuItem alloc] initWithTitle:@"Status: stop" action:NO keyEquivalent:@""];
    [statusMenuItem setTarget:self];
    [statusMenu removeItemAtIndex:3];
    [statusMenu insertItem:statusMenuItem atIndex:3];
}

- (IBAction)apacheRestart:(id)sender {
    NSLog(@"apache restart");
    
    statusMenuItem = [[NSMenuItem alloc] initWithTitle:@"Status: restart" action:NO keyEquivalent:@""];
    [statusMenuItem setTarget:self];
    [statusMenu removeItemAtIndex:3];
    [statusMenu insertItem:statusMenuItem atIndex:3];
}

@end
