//
//  AppDelegate.m
//  iPCYP
//
//  Created by raduwen on 1/13/16.
//  Copyright © 2016 raduwen. All rights reserved.
//

#import "MainWindowController.h"
#import "AppDelegate.h"

@interface AppDelegate ()

@property (weak) IBOutlet NSWindow *window;
@end

@implementation AppDelegate

- (void)applicationWillFinishLaunching:(NSNotification *)notification {
  self.mainWC = [[MainWindowController alloc] initWithWindowNibName:@"MainWindowController"];
}

- (void)applicationDidFinishLaunching:(NSNotification *)aNotification {
  [self.mainWC showWindow:self];
}

- (void)applicationWillTerminate:(NSNotification *)aNotification {
  // Insert code here to tear down your application
}

@end
