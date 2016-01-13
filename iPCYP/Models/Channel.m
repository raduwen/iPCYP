//
//  Channel.m
//  iPCYP
//
//  Created by iyuuya on 1/14/16.
//  Copyright © 2016 raduwen. All rights reserved.
//

#import "Channel.h"

@implementation Channel

- (Channel *)initWithDictionary:(NSDictionary *)dict
{
  self = [self init];

  self.name = dict[@"name"];
  self.identity = dict[@"identity"];
  self.ip = dict[@"ip"];
  self.url = dict[@"url"];
  self.genre = dict[@"genre"];
  self.details = dict[@"details"];
  self.listerners = [dict[@"listerners"] integerValue];
  self.relays = [dict[@"relays"] integerValue];
  self.bitrate = [dict[@"bitrate"] integerValue];
  self.type = dict[@"type"];
  self.track_artist = dict[@"track_artist"];
  self.track_album = dict[@"track_album"];
  self.track_title = dict[@"track_title"];
  self.track_contact = dict[@"track_contact"];
  self.name_url = dict[@"name_url"];
  NSArray *hm = [dict[@"age"] componentsSeparatedByString:@":"];
  if ([hm count] == 2) {
    self.age = [hm[0] integerValue] * 60 + [hm[1] integerValue];
  } else {
    self.age = [hm[0] integerValue];
  }
  self.status = dict[@"status"];
  self.comment = dict[@"comment"];
  self.direct = [dict[@"direct"] integerValue];

  return self;
}

- (NSString *)ageDescription
{
  return [[NSString alloc] initWithFormat:@"%ld:%02ld", self.age/60, self.age%60];
}

- (NSString *)description
{
  return [[NSString alloc] initWithFormat:@"<Channel: name = %@; identity = %@; ip = %@; url = %@; genre = %@; details = %@; listerners = %ld; relays = %ld; bitrate = %ld; type = %@; track_artist = %@; track_album = %@; track_title = %@; track_contact = %@; name_url = %@; age = %@; status = %@; comment = %@; direct = %ld>",
    self.name, self.identity, self.ip, self.url, self.genre, self.details,
    self.listerners, self.relays, self.bitrate, self.type, self.track_artist,
    self.track_album, self.track_title, self.track_contact, self.name_url,
    [self ageDescription], self.status, self.comment, self.direct
  ];
}

+ (NSArray *)parseChannelsString:(NSString *)channelsString
{
  NSMutableArray *result = [@[] mutableCopy];

  [channelsString enumerateLinesUsingBlock:^(NSString * _Nonnull line, BOOL * _Nonnull stop) {
    NSArray *data = [line componentsSeparatedByString:@"<>"];
    NSDictionary *dict = @{
      @"name": data[0],
      @"identity": data[1],
      @"ip": data[2],
      @"url": data[3],
      @"genre": data[4],
      @"details": data[5],
      @"listerners": data[6],
      @"relays": data[7],
      @"bitrate": data[8],
      @"type": data[9],
      @"track_artist": data[10],
      @"track_album": data[11],
      @"track_title": data[12],
      @"track_contact": data[13],
      @"name_url": data[14],
      @"age": data[15],
      @"status": data[16],
      @"comment": data[17],
      @"direct": data[18]
    };

    [result addObject: [[Channel alloc] initWithDictionary:dict]];
  }];

  return [NSArray arrayWithArray:result];
}

@end
