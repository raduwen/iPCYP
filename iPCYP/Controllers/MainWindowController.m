//
//  MainWindowController.m
//  iPCYP
//
//  Created by raduwen on 1/13/16.
//  Copyright © 2016 raduwen. All rights reserved.
//

#import "ChannelsViewController.h"
#import "MainWindowController.h"

@interface MainWindowController ()

@end

@implementation MainWindowController

- (id)initWithWindow:(NSWindow *)window
{
  self = [super initWithWindow:window];

  self.channelsVC = [[ChannelsViewController alloc] initWithNibName:@"ChannelsViewController" bundle:nil];

  return self;
}


- (void)windowDidLoad {
  [super windowDidLoad];

  [self.window setContentView:self.channelsVC.view];
}

@end
