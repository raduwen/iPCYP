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

@end

@implementation AppDelegate

- (void)applicationWillFinishLaunching:(NSNotification *)notification {
  self.mainWC = [[MainWindowController alloc] initWithWindowNibName:@"MainWindowController"];
}

- (void)applicationDidFinishLaunching:(NSNotification *)aNotification {
  [self.mainWC showWindow:self];

  // http://temp.orz.hm/yp/index.txt
  // http://bayonet.ddo.jp/sp/index.txt

  NSString* identifier = @"BackgroundSessionConfiguration";
  NSURLSessionConfiguration* configuration = [NSURLSessionConfiguration backgroundSessionConfigurationWithIdentifier:identifier];
  NSURLSession *session = [NSURLSession sessionWithConfiguration:configuration delegate:self delegateQueue:nil];
  NSURL *requestURL = [NSURL URLWithString:@"http://bayonet.ddo.jp/sp/index.txt"];

  [session getTasksWithCompletionHandler:^(NSArray* dataTasks, NSArray* uploadTasks, NSArray* downloadTasks){
    NSLog(@"Currently suspended tasks");
    for (NSURLSessionDownloadTask* task in downloadTasks) {
      NSLog(@"Task: %@", [task description]);
    }
  }];

  NSURLSessionDownloadTask *task = [session downloadTaskWithURL:requestURL];
  [task resume];
}

- (void)URLSession:(NSURLSession *)session downloadTask:(NSURLSessionDownloadTask *)downloadTask didFinishDownloadingToURL:(NSURL *)location
{
  NSString *body = [[NSString alloc] initWithData:[NSData dataWithContentsOfURL:location] encoding:NSUTF8StringEncoding];
  if (body.length > 0) {
    [body enumerateLinesUsingBlock:^(NSString * _Nonnull line, BOOL * _Nonnull stop) {
      NSArray *data = [line componentsSeparatedByString:@"<>"];
      NSDictionary *dict = @{
        @"name" : data[0],
        @"id" : data[1],
        @"ip" : data[2],
        @"url" : data[3],
        @"genre" : data[4],
        @"description" : data[5],
        @"listerners" : data[6],
        @"relays" : data[7],
        @"bitrate" : data[8],
        @"type" : data[9],
        @"track_artist" : data[10],
        @"track_album" : data[11],
        @"track_title" : data[12],
        @"track_contact" : data[13],
        @"name_url" : data[14],
        @"age" : data[15],
        @"status" : data[16],
        @"comment" : data[17],
        @"direct" : data[18]
      };
      NSLog(@"%@", dict);
    }];
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
