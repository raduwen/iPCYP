//
//  ChannelsViewController.m
//  iPCYP
//
//  Created by raduwen on 1/14/16.
//  Copyright © 2016 raduwen. All rights reserved.
//

#import "Channel.h"
#import "ChannelsViewController.h"

@interface ChannelsViewController ()

@end

@implementation ChannelsViewController

- (void)setupChannels
{
  self.channels = [[Channel parseChannelsString: @"にゃんもけch<>4A0ADF0DAB97960783E4D9D6F1D92D9E<>175.108.24.230:30004<>http://jbbs.livedoor.jp/bbs/read.cgi/internet/16668/1452353653/<>FPSorRTS 　何かゲーム短時間<>グラブル日報・・・？ ٩( &#039;ω&#039; )و - &lt;Free&gt;<>36<>32<>2117<>WMV<><><><><>%E3%81%AB%E3%82%83%E3%82%93%E3%82%82%E3%81%91ch<>0:09<>click<><>0\n医者キックtest<>F53342F2965242B120E59C6B45ACBE53<>153.152.176.152:7144<>http://jbbs.shitaraba.net/bbs/read.cgi/game/32713/1452606662/<>Game ゴミスレ<>医療ミス連発 - &lt;Free&gt;<>-1<>-1<>664<>FLV<><>呪われた配信<><><>%E5%8C%BB%E8%80%85%E3%82%AD%E3%83%83%E3%82%AFtest<>0:26<>click<><>0\nしぇん<>A16399BEBA8E51BE03240AC5C757ABC7<>203.136.207.99:7144<>http://jbbs.shitaraba.net/bbs/read.cgi/game/41860/1440261827/<>Game<>ロックマンX3TA - &lt;Free&gt;<>51<>52<>806<>WMV<><><><><>%E3%81%97%E3%81%87%E3%82%93<>0:39<>click<><>0\nゴドー<>BC48E6C6E8842F475AA80230EA4D84AB<>121.103.176.10:7144<>http://jbbs.shitaraba.net/bbs/read.cgi/radio/2092/1452531127/<>FFT<>【速報】SMAP解散へ - &lt;Free&gt;<>123<>123<>976<>WMV<><><><><>%E3%82%B4%E3%83%89%E3%83%BC<>1:13<>click<><>0\nおぱんつｃｈ<>C72CBB59E5BFBC9CE2932F9B1B98E796<>133.203.86.77:7144<>http://jbbs.livedoor.jp/bbs/read.cgi/internet/7232/1452270929/<>Game<>BlueStacks 『白猫プロジェクト』 - &lt;Free&gt;<>-1<>-1<>880<>WMV<><><><><>%E3%81%8A%E3%81%B1%E3%82%93%E3%81%A4%EF%BD%83%EF%BD%88<>1:21<>click<>相互消化でござる！<>0\nあいみちゃんねる<>2C983B4A6AFAD0CB7BEF71251332110A<>153.232.27.228:6660<>http://jbbs.shitaraba.net/bbs/read.cgi/game/45745/1449914074/<>Game<>PC FO4 テスト配信 - &lt;Free&gt;<>15<>16<>1296<>FLV<><><><><>%E3%81%82%E3%81%84%E3%81%BF%E3%81%A1%E3%82%83%E3%82%93%E3%81%AD%E3%82%8B<>1:54<>click<><>0\nあくえり<>90FB9182B192F470796C2FFA78BC35CD<>126.117.44.178:7777<>http://jbbs.shitaraba.net/game/50216/<>Game SFC<>DQ2 - &lt;Free&gt;<>-1<>-1<>774<>WMV<><><><><>%E3%81%82%E3%81%8F%E3%81%88%E3%82%8A<>2:08<>click<><>0\nDBRK<>2CE86F68CF54CF41843FAED4A5AE37F3<>221.247.32.19:7144<>http://jbbs.shitaraba.net/netgame/11990/<>ゲーム　酒飲みながらゲーム<>現在：ガンオン - &lt;Free&gt;<>31<>35<>1296<>FLV<><><><><>DBRK<>2:13<>click<><>0\nセガB<>AAD18852467E59CA4AEC460790D3B39A<>125.194.221.203:7144<>http://jbbs.shitaraba.net/bbs/read.cgi/game/58965/1450460666/l50<>PS3<>バイオハザードHDリマスター - &lt;Free&gt;<>45<>54<>1278<>WMV<><><><><>%E3%82%BB%E3%82%ACB<>2:24<>click<>バーチャロンプロが行くバイオシリーズ初挑戦<>0\nがちまろ<>6C5119EF333D202505DF6619B7C3CAA2<>153.208.147.95:7144<>http://jbbs.shitaraba.net/computer/44291/<><>1/98304 - &lt;Free&gt;<>-1<>-1<>960<>WMV<><><><><>%E3%81%8C%E3%81%A1%E3%81%BE%E3%82%8D<>2:38<>click<><>0\n嘘つき帽都(改)<>68EA1409FF8F1780BDB973BE3A980039<>118.106.25.94:7144<>http://jbbs.shitaraba.net/internet/23042/<>お絵描き<>CG集制作 - &lt;Free&gt;<>14<>13<>812<>WMV<><><><><>%E5%98%98%E3%81%A4%E3%81%8D%E5%B8%BD%E9%83%BD%28%E6%94%B9%29<>2:39<>click<>コンパクトデジカメに付いて詳しい人きてください<>0\nきたくま<>15FA1CFF86DAE0CABBACCAB66175238B<>118.111.222.178:7144<>http://jbbs.shitaraba.net/bbs/read.cgi/netgame/14673/1452335593/<>Game<>メカ - &lt;Free&gt;<>-1<>-1<>996<>FLV<><><><><>%E3%81%8D%E3%81%9F%E3%81%8F%E3%81%BE<>2:42<>click<><>0\nマイスター<>1A2F2FE9EAAD07DFB4AC556DEA3FFF3C<>119.231.20.210:7144<>http://jbbs.shitaraba.net/bbs/read.cgi/netgame/13780/1452005601/<><>&lt;Free&gt;<>30<>29<>1128<>FLV<><><><><>%E3%83%9E%E3%82%A4%E3%82%B9%E3%82%BF%E3%83%BC<>2:47<>click<>ふぁんあす　<>0\nこがまんch<>09748D58C884315CD7C7BA77501B5FA7<>114.176.57.54:7144<>http://jbbs.shitaraba.net/internet/9909/<>作業<>お手元 - &lt;Free&gt;<>-1<>-1<>209<>WMV<><><><><>%E3%81%93%E3%81%8C%E3%81%BE%E3%82%93ch<>2:52<>click<><>0\nどろぼけch<>41CEAAF8D159D20ADD537C172C0BF950<>203.168.70.162:7144<>http://jbbs.shitaraba.net/bbs/read.cgi/game/46366/1452256847/<>game<>激安ゲーム見定め配信 - &lt;Free&gt;<>88<>98<>958<>WMV<><><><><>%E3%81%A9%E3%82%8D%E3%81%BC%E3%81%91ch<>2:57<>click<>195本目：ブラックマトリクス（250円）、3日目<>0\nMOXch<>3ED1A2D5D5A7E7BAC77537821FC50BCB<>126.8.169.104:7144<>http://jbbs.livedoor.jp/bbs/read.cgi/netgame/11756/1452695383/<>game 東方　幻想人形演舞<>3回目。ストーリーこんな長かったっけ… - &lt;Free&gt;<>29<>31<>1076<>WMV<><><><><>MOXch<>3:02<>click<>かんじゅでんPTでストーリーだらだら<>0\nぷらもん模型ｃｈ<>B3A945762D41CB97C7062596EF3282C9<>122.18.196.186:7144<>http://jbbs.shitaraba.net/sports/31616/<>模型<>【戦車】1/35 T26E3 パーシング（３台目） - &lt;Free&gt;<>-1<>-1<>570<>WMV<><><><><>%E3%81%B7%E3%82%89%E3%82%82%E3%82%93%E6%A8%A1%E5%9E%8B%EF%BD%83%EF%BD%88<>3:26<>click<>キャタピラ製作<>0\n千鶴子マン<>96FB5F44F47312EBCB0E459E6C2A6D23<>118.111.165.121:7144<>http://jbbs.shitaraba.net/bbs/read.cgi/radio/27400/1451746939/<>お絵かき18x<>短時間　夏コミ申込書必要な方　先着１名に - &lt;Free&gt;<>26<>27<>573<>WMV<><><><><>%E5%8D%83%E9%B6%B4%E5%AD%90%E3%83%9E%E3%83%B3<>3:33<>click<><>0\nひたすら麻雀<>90371464B489462C8CDD46F21D98563B<>118.152.102.245:7144<>http://jbbs.shitaraba.net/bbs/read.cgi/game/58669/1448282126/<>麻雀<>個室7144 - &lt;Free&gt;<>20<>19<>286<>WMV<><><><><>%E3%81%B2%E3%81%9F%E3%81%99%E3%82%89%E9%BA%BB%E9%9B%80<>3:58<>click<>ラス半<>0\nエルバ<>9061B12DFB22740B10ED6EFFC464D681<>122.26.92.14:7144<>http://jbbs.livedoor.jp/bbs/read.cgi/game/44369/1452376739/<>game<>シレポン - &lt;Free&gt;<>-1<>-1<>879<>WMV<><><><><>%E3%82%A8%E3%83%AB%E3%83%90<>4:47<>click<>短時間<>0\nどでぃch<>DD97C2E85F4551617462E36B7130E98E<>153.164.123.94:7144<>http://jbbs.shitaraba.net/netgame/6653/<> game moba LoL 日本語<>のりガムさんに似てるらしい - &lt;Free&gt;<>36<>46<>1592<>FLV<><><><><>%E3%81%A9%E3%81%A7%E3%81%83ch<>5:01<>click<><>0\nたにキャプ<>36F9379686B3183CD0BD3FC63B98AC94<>153.232.205.150:7144<>http://jbbs.shitaraba.net/bbs/read.cgi/game/51851/1452427360/<>lol ほぼ日本語化<>&lt;Free&gt;<>-1<>-1<>978<>FLV<><><><><>%E3%81%9F%E3%81%AB%E3%82%AD%E3%83%A3%E3%83%97<>6:12<>click<><>0\n沙竹唯ch<>A2978E92569289A2FE0232EF1306B0A5<>222.10.66.51:7144<>http://jbbs.shitaraba.net/bbs/read.cgi/radio/7612/1452506668/<>game フリゲ1000本打開計画<>No.381 Tactical Chronicle - &lt;Free&gt;<>163<>205<>1077<>WMV<><><><><>%E6%B2%99%E7%AB%B9%E5%94%AFch<>8:49<>click<>FF12っぽい戦闘システムのゲーム　面白い<>0\nたけぞう<>A80C96F94D1FFDDE86F47212E52DB965<>58.81.180.52:7144<>http://jbbs.shitaraba.net/game/57998/<>Game<>FLV - &lt;Free&gt;<>23<>23<>1628<>FLV<><><><><>%E3%81%9F%E3%81%91%E3%81%9E%E3%81%86<>22:14<>click<><>0\nSP◆ポート未開放<>00000000000000000000000000000000<><><><>ポートが開放されていません。■お知らせ:通常運転<>-9<>-9<>0<>RAW<><><><><><>00:00<>click<><>0\nSP ※重要 10/08<>00000000000000000000000000000000<><>http://bayonet.ddo.jp/sp/xgame.html<><>■一般社団法人コンピュータソフトウェア倫理機構に加盟している企業様が所持するコンテンツ（基本、体験版含む）全ての配信の禁止について利用規約の配信禁止コンテンツ一覧に追加しました。<>-9<>-9<>0<>RAW<><><><><><>00:00<>click<><>0\nSP ※お知らせ 12/25<>00000000000000000000000000000000<><>https://twitter.com/FireEmblemJP/status/680296647390179328<><>「幻影異聞録♯FE」本編全般のネタバレ自粛のお願いが出ています。<>-9<>-9<>0<>RAW<><><><><><>00:00<>click<><>0\n"] mutableCopy];
}

- (void)viewDidLoad {
  [super viewDidLoad];
  [self setupChannels];

  [self.view setAutoresizingMask:NSViewWidthSizable | NSViewHeightSizable];
}

#pragma mark - NSTableView data source

- (NSInteger)numberOfRowsInTableView:(NSTableView *)aTableView
{
  return [self.channels count];
}

- (id)tableView:(NSTableView *)tableView objectValueForTableColumn:(NSTableColumn *)tableColumn row:(NSInteger)row
{
  Channel *channel = self.channels[row];
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
  }

  return text;
}

@end
