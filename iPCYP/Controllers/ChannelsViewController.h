//
//  ChannelsViewController.h
//  iPCYP
//
//  Created by raduwen on 1/14/16.
//  Copyright © 2016 raduwen. All rights reserved.
//

#import <Cocoa/Cocoa.h>

@interface ChannelsViewController : NSViewController <NSTableViewDataSource>

@property (nonatomic, strong) NSMutableArray *channels;

@end
