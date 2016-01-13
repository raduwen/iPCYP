//
//  MainWindowController.h
//  iPCYP
//
//  Created by raduwen on 1/13/16.
//  Copyright © 2016 raduwen. All rights reserved.
//

#import <Cocoa/Cocoa.h>

@class ChannelsViewController;

@interface MainWindowController : NSWindowController

@property (nonatomic, strong) ChannelsViewController *channelsVC;

@end
