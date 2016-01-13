//
//  YellowPage.h
//  iPCYP
//
//  Created by raduwen on 1/14/16.
//  Copyright © 2016 raduwen. All rights reserved.
//

#import <Foundation/Foundation.h>

@class ChannelsViewController;

@interface YellowPage : NSObject <NSURLSessionDownloadDelegate>

@property (nonatomic, strong) NSString *name;
@property (nonatomic, strong) NSString *url;
@property (nonatomic, strong) NSArray *channels;

- (YellowPage *)initWithName:(NSString *) name url:(NSString *)url;
- (void)pullChannels;
- (void)pullChannelsWithChannelsVC:(ChannelsViewController *)channelsVC;
@end
