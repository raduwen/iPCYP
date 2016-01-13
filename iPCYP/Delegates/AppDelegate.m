//
//  AppDelegate.m
//  iPCYP
//
//  Created by raduwen on 1/13/16.
//  Copyright © 2016 raduwen. All rights reserved.
//

#import "MainWindowController.h"
#import "Channel.h"
#import "AppDelegate.h"

@interface AppDelegate ()

@end

@implementation AppDelegate

- (void)applicationWillFinishLaunching:(NSNotification *)notification {
  self.mainWC = [[MainWindowController alloc] initWithWindowNibName:@"MainWindowController"];
}

- (void)applicationDidFinishLaunching:(NSNotification *)aNotification {
  [self.mainWC showWindow:self];

  // http://temp.orz.hm/yp/index.txt
  // http://bayonet.ddo.jp/sp/index.txt
/***
  NSString* identifier = @"BackgroundSessionConfiguration";
  NSURLSessionConfiguration* configuration = [NSURLSessionConfiguration backgroundSessionConfigurationWithIdentifier:identifier];
  NSURLSession *session = [NSURLSession sessionWithConfiguration:configuration delegate:self delegateQueue:nil];
  // NSURL *requestURL = [NSURL URLWithString:@"http://bayonet.ddo.jp/sp/index.txt"];
  NSURL *requestURL = [NSURL URLWithString:@"http://temp.orz.hm/yp/index.txt"];

  [session getTasksWithCompletionHandler:^(NSArray* dataTasks, NSArray* uploadTasks, NSArray* downloadTasks){
    NSLog(@"Currently suspended tasks");
    for (NSURLSessionDownloadTask* task in downloadTasks) {
      NSLog(@"Task: %@", [task description]);
    }
  }];

  NSURLSessionDownloadTask *task = [session downloadTaskWithURL:requestURL];
  [task resume];
***/
}

- (void)URLSession:(NSURLSession *)session downloadTask:(NSURLSessionDownloadTask *)downloadTask didFinishDownloadingToURL:(NSURL *)location
{
  NSString *body = [[NSString alloc] initWithData:[NSData dataWithContentsOfURL:location] encoding:NSUTF8StringEncoding];
  if (body.length > 0) {
    NSLog(@"%@", [Channel parseChannelsString:body]);
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

- (void)applicationWillTerminate:(NSNotification *)aNotification {
  // Insert code here to tear down your application
}

@end
