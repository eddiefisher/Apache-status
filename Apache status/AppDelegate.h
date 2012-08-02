//
//  AppDelegate.h
//  Apache status
//
//  Created by Eddie Fisher on 8/2/12.
//  Copyright (c) 2012 Eddie Fisher. All rights reserved.
//

#import <Cocoa/Cocoa.h>

@interface AppDelegate : NSObject <NSApplicationDelegate> {
    IBOutlet NSMenu *statusMenu;
    NSMenuItem *statusMenuItem;
    NSStatusItem *statusItem;
    NSImage *statusStartImage;
    NSImage *statusStopImage;
}

-(IBAction)apacheStart:(id)sender;
-(IBAction)apacheStop:(id)sender;
-(IBAction)apacheRestart:(id)sender;

@property (assign) IBOutlet NSWindow *window;

@end
