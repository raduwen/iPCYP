//
//  ChannelsViewController.m
//  iPCYP
//
//  Created by raduwen on 1/14/16.
//  Copyright © 2016 raduwen. All rights reserved.
//

#import "YellowPage.h"
#import "Channel.h"
#import "ChannelsViewController.h"

@interface ChannelsViewController ()

@end

@implementation ChannelsViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
  self = [super initWithNibName:nibNameOrNil bundle: nibBundleOrNil];

  self.yp = [[YellowPage alloc] initWithName:@"TP" url:@"http://temp.orz.hm/yp/index.txt"];
  self.yp.channels = @[];

  [self.yp pullChannelsWithChannelsVC:self];

  return self;
}

- (void)viewDidLoad {
  [super viewDidLoad];

  [self.view setAutoresizingMask:NSViewWidthSizable | NSViewHeightSizable];
}

#pragma mark - NSTableView data source

- (NSInteger)numberOfRowsInTableView:(NSTableView *)tableView
{
  // TODO: channels count for each yellow pages
  return [self.yp.channels count];
}

- (id)tableView:(NSTableView *)tableView objectValueForTableColumn:(NSTableColumn *)tableColumn row:(NSInteger)row
{
  // TODO: channel from yellow pages

  Channel *channel = self.yp.channels[row];
  NSString *text;

  if ([[tableColumn identifier] isEqualToString:@"name"]) {
    text = channel.name;
  } else if ([[tableColumn identifier] isEqualToString:@"identity"]) {
    text = channel.identity;
  } else if ([[tableColumn identifier] isEqualToString:@"genre"]) {
    text = channel.genre;
  } else if ([[tableColumn identifier] isEqualToString:@"url"]) {
    text = channel.url;
  } else if ([[tableColumn identifier] isEqualToString:@"details"]) {
    text = channel.details;
  } else if ([[tableColumn identifier] isEqualToString:@"comment"]) {
    text = channel.comment;
  } else if ([[tableColumn identifier] isEqualToString:@"age"]) {
    text = [channel ageDescription];
  }

  return text;
}

#pragma mark - YellowPageUpdateNotification

- (void)updateYellowPage:(id)sender
{
  [self.tableView noteNumberOfRowsChanged];
}

@end
