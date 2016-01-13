//
//  Channel.h
//  iPCYP
//
//  Created by iyuuya on 1/14/16.
//  Copyright © 2016 raduwen. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Channel : NSObject

@property (nonatomic, strong) NSString *name;
@property (nonatomic, strong) NSString *identity;
@property (nonatomic, strong) NSString *ip;
@property (nonatomic, strong) NSString *url;
@property (nonatomic, strong) NSString *genre;
@property (nonatomic, strong) NSString *details;
@property (nonatomic, assign) NSInteger listerners;
@property (nonatomic, assign) NSInteger relays;
@property (nonatomic, assign) NSInteger bitrate;
@property (nonatomic, strong) NSString *type;
@property (nonatomic, strong) NSString *track_artist;
@property (nonatomic, strong) NSString *track_album;
@property (nonatomic, strong) NSString *track_title;
@property (nonatomic, strong) NSString *track_contact;
@property (nonatomic, strong) NSString *name_url;
@property (nonatomic, assign) NSInteger age;
@property (nonatomic, strong) NSString *status;
@property (nonatomic, strong) NSString *comment;
@property (nonatomic, assign) NSInteger direct;

- (Channel *)initWithDictionary:(NSDictionary *)dict;
- (NSString *)ageDescription;

+ (NSArray *)parseChannelsString:(NSString *)channelsString;

@end
