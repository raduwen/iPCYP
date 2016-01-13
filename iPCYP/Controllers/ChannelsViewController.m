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

  // TODO: load from configuration file
  self.yellowPages = @[
    [[YellowPage alloc] initWithName:@"TP" url:@"http://temp.orz.hm/yp/index.txt"],
    [[YellowPage alloc] initWithName:@"SP" url:@"http://bayonet.ddo.jp/sp/index.txt"]
  ];

  [self.yellowPages enumerateObjectsUsingBlock:^(YellowPage *yp, NSUInteger idx, BOOL *stop) {
    [yp pullChannelsWithChannelsVC:self];
  }];

  return self;
}

- (void)viewDidLoad {
  [super viewDidLoad];

  [self.view setAutoresizingMask:NSViewWidthSizable | NSViewHeightSizable];
}

#pragma mark - NSTableView data source

- (NSInteger)numberOfRowsInTableView:(NSTableView *)tableView
{
  __block NSInteger count = 0;

  [self.yellowPages enumerateObjectsUsingBlock:^(YellowPage *yp, NSUInteger idx, BOOL *stop) {
    count += [yp.channels count];
  }];

  NSLog(@"%ld", count);

  return count;
}

- (id)tableView:(NSTableView *)tableView objectValueForTableColumn:(NSTableColumn *)tableColumn row:(NSInteger)row
{
  __block NSInteger i = 0;
  __block Channel *channel;
  [self.yellowPages enumerateObjectsUsingBlock:^(YellowPage *yp, NSUInteger idx, BOOL *stop) {
    [yp.channels enumerateObjectsUsingBlock:^(Channel *ch, NSUInteger _idx, BOOL *_stop) {
      if (i == row) channel = ch;
      i++;
    }];
  }];

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
