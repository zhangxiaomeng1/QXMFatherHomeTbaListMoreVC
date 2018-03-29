//
//  QXMFatherHomeItem.m
//  QXM
//
//  Created by 张晓檬 on 16/11/3.
//  Copyright © 2016年 xiangshang360.com. All rights reserved.
//

#import "QXMFatherHomeItem.h"

@implementation QXMFatherHomeItem

+ (NSDictionary *)objectClassInArray{
    return @{
             @"tabList": [QXMFatherHomeIndexCollectionModel class],
             
             @"dynamicBanners": [QXMFatherHomeItemBanners class],
             
             @"stockNewsCount": [QXMFatherHomeItemStockNewsCount class],

             @"goldens": [QXMFatherHomeGoldensModel class],
             @"strategys": [QXMFatherHomeStrategysModel class],
             @"eventNotices": [QXMFatherHomeEventNoticesModel class],
             
             };
    
}

@end
//============================热点里面的活动 V2.3====================================================================
@implementation QXMHotspotActivityModel

+ (NSDictionary *)objectClassInArray{
    return @{@"results": [QXMFatherHomeItemBanners class]};
}

@end

//首页banner 图
@implementation QXMFatherHomeItemBanners

@end


@implementation QXMFatherHomeItemStockNewsCount

@end

@implementation QXMFatherHomeIndexCollectionModel

@end

//List<JiheStockGoldenVo>	goldens	几何金股列表
@implementation QXMFatherHomeGoldensModel


@end

//List<StrategyVo>	strategys	量化策略列表
@implementation QXMFatherHomeStrategysModel


@end

//List<EventNoticeVo>	eventNotices	事件驱动列表
@implementation QXMFatherHomeEventNoticesModel


@end

//几何快报
@implementation QXMFatherHomeItemPop


@end











