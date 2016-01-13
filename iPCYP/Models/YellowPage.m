//
//  YellowPage.m
//  iPCYP
//
//  Created by raduwen on 1/14/16.
//  Copyright © 2016 raduwen. All rights reserved.
//

#import "Channel.h"
#import "ChannelsViewController.h"
#import "YellowPage.h"

@implementation YellowPage

- (YellowPage *)initWithName:(NSString *)name url:(NSString *)url
{
  self = [self init];

  self.name = name;
  self.url = url;

  return self;
}

- (void)pullChannels
{
  NSURLSessionConfiguration* configuration = [NSURLSessionConfiguration defaultSessionConfiguration];
  NSURLSession *session = [NSURLSession sessionWithConfiguration:configuration delegate:self delegateQueue:nil];
  NSURL *requestURL = [NSURL URLWithString:self.url];

  [session getTasksWithCompletionHandler:^(NSArray* dataTasks, NSArray* uploadTasks, NSArray* downloadTasks){
    NSLog(@"Currently suspended tasks");
    for (NSURLSessionDownloadTask* task in downloadTasks) {
      NSLog(@"Task: %@", [task description]);
    }
  }];

  NSURLSessionDownloadTask *task = [session downloadTaskWithURL:requestURL];
  [task resume];
}

- (NSString *)updateYellowPageNotificationName
{
  return [[NSString alloc] initWithFormat: @"UpdateYellowPage+%@", self.name];
}

- (void)pullChannelsWithChannelsVC:(ChannelsViewController *)channelsVC
{
  [[NSNotificationCenter defaultCenter] addObserver:channelsVC
                                           selector:@selector(updateYellowPage:)
                                               name:[self updateYellowPageNotificationName]
                                             object:nil];

  [self pullChannels];
}

- (void)URLSession:(NSURLSession *)session downloadTask:(NSURLSessionDownloadTask *)downloadTask didFinishDownloadingToURL:(NSURL *)location
{
  NSString *body = [[NSString alloc] initWithData:[NSData dataWithContentsOfURL:location] encoding:NSUTF8StringEncoding];
  if (body.length > 0) {
    self.channels = [Channel parseChannelsString:body];
    [[NSNotificationCenter defaultCenter] postNotificationName:[self updateYellowPageNotificationName] object:nil];
    NSLog(@"set channels to yp");
  }
}
- (void)URLSession:(NSURLSession *)session task:(NSURLSessionTask *)task didCompleteWithError:(NSError *)error
{
  NSLog(@"Downloading has been completed.");
  if (error == nil) {
    NSLog(@"Downloading was succeeded");
  } else {
    NSLog(@"Downloading failed");
    NSLog(@"%@", error);
  }
}

@end
