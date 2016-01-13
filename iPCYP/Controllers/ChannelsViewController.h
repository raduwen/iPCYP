//
//  ChannelsViewController.h
//  iPCYP
//
//  Created by raduwen on 1/14/16.
//  Copyright © 2016 raduwen. All rights reserved.
//

#import <Cocoa/Cocoa.h>

@class YellowPage;

@interface ChannelsViewController : NSViewController <NSTableViewDataSource>

@property (nonatomic, strong) YellowPage *yp;
@property (nonatomic, strong) NSArray *yellowPages;

@property (weak) IBOutlet NSTableView *tableView;

- (void)updateYellowPage:(id)sender;

@end
