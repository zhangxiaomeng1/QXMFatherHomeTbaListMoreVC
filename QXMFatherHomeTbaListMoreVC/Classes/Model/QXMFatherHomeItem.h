//
//  QXMFatherHomeItem.h
//  QXM
//
//  Created by 张晓檬 on 16/11/3.
//  Copyright © 2016年 xiangshang360.com. All rights reserved.
//

//首页获取后台数据
@interface QXMFatherHomeItem : NSObject

@property (nonatomic, strong) NSArray *dynamicBanners;//动态banner

/**指标开户等*/
@property (nonatomic, strong) NSArray *tabList;

/** 新闻热股*/
@property (nonatomic, strong) NSArray *stockNewsCount;

//goldenTitle	几何金股 几何金股标题
@property (nonatomic, copy) NSString *goldenTitle;
//List<JiheStockGoldenVo>	goldens	几何金股列表
@property (nonatomic, strong) NSArray *goldens;

//strategyTitle	量化策略	量化策略标题
@property (nonatomic, copy) NSString *strategyTitle;
//List<StrategyVo>	strategys	量化策略列表
@property (nonatomic, strong) NSArray *strategys;

//enventTitle	事件驱动	 事件驱动标题
@property (nonatomic, copy) NSString *enventTitle;
//List<EventNoticeVo>	eventNotices	事件驱动列表
@property (nonatomic, strong) NSArray *eventNotices;

@end


//============================热点里面的活动 V2.3====================================================================
@interface QXMHotspotActivityModel : NSObject
//id	long	资讯id
//newsTitle	String	资讯标题
//newsOriginSource	String	资讯来源
//publishTime	String	发布时间
//imgList	list	图片数组
//imgUrl	string	图片链接
//topVo	置顶新闻
/**数组 */
@property (nonatomic, strong) NSArray *results;

@property (nonatomic, strong) NSNumber *totalPage;


@end


//首页banner 图
@interface QXMFatherHomeItemBanners : NSObject
//banners	banner 图
//id	Long	id
//bannerName	String	bannner 图名称
//imageUrl	String	图片url
//jumpUrl	String	链接跳转url
//isHaveShare	Boolean	是否分享
//isHiddenNavagation	Boolean	????
@property (nonatomic, copy) NSString *imageUrl;
@property (nonatomic, copy) NSString *jumpUrl;
//isHaveShare是否有分享
@property (nonatomic, assign) BOOL isHaveShare;
//isHiddenNavagation是否有导航条
@property (nonatomic, assign) BOOL isHiddenNavagation;
//    是否有评论
@property (nonatomic, assign) BOOL isHaveComment;

//============================热点里面的活动 V2.3=
@property (nonatomic, copy) NSString *activityImgUrl;
@property (nonatomic, copy) NSString *bannerName;
@property (nonatomic, copy) NSString *createTime;
@property (nonatomic, copy) NSString *stoptime;
@property (nonatomic, assign) BOOL status;

@property (nonatomic, assign) BOOL isShow;
@property (nonatomic, copy) NSString *imgUrl;

@end


//新闻热股
@interface QXMFatherHomeItemStockNewsCount : NSObject
//securityType = 深股;
//stockName = 平安银行;
//exchangeMarket = SZ;
//stockCode = 000001;
//newsCount = 2323;
//honeyCode = sz000001;
@property (nonatomic, copy) NSString *stockName;
@property (nonatomic, copy) NSString *securityType;
@property (nonatomic, copy) NSString *exchangeMarket;
@property (nonatomic, copy) NSString *stockCode;
@property (nonatomic, copy) NSString *newsCount;
@property (nonatomic, copy) NSString *honeyCode;
//    行业
@property (nonatomic, copy) NSString *industryName;
@property (nonatomic, copy) NSString *securityName;
///***判断停牌字段  */
@property (nonatomic, copy) NSNumber *deletionIndicator;
@property (nonatomic, assign) double upOrDown;


@end

// 选股指标;开户等
@interface QXMFatherHomeIndexCollectionModel : NSObject
//tabTitle = 选股指标;开户等
//tabType = STOCKINDEX;
//url = <null>;
//tabImg = http://src.qianxiaomi.cc/honey-resource/static/images/xgzb.png;///
@property (nonatomic, copy) NSString *tabTitle;
@property (nonatomic, copy) NSString *tabTitleColor;
@property (nonatomic, copy) NSString *tabType;
@property (nonatomic, copy) NSString *url;
@property (nonatomic, copy) NSString *tabImg;
//isHaveShare是否有分享
@property (nonatomic, assign) BOOL isHaveShare;
//isHiddenNavagation是否有导航条
@property (nonatomic, assign) BOOL isHiddenNavagation;
//    是否有评论
@property (nonatomic, assign) BOOL isHaveComment;

//@property (nonatomic, copy) void(^)();

@end

//=================================2.1===========================================================
//List<JiheStockGoldenVo>	goldens	几何金股列表
@interface QXMFatherHomeGoldensModel : NSObject
//股票名称
@property (nonatomic, copy) NSString *stockName;
//最近价
@property (nonatomic, copy) NSString *lastPriceD;
//涨跌额
@property (nonatomic, copy) NSString *changePrice;
@property (nonatomic, copy) NSString *color;
//涨跌幅
@property (nonatomic, copy) NSString *changePercent;
//推荐理由
@property (nonatomic, copy) NSString *introduce;
//股票co
@property (nonatomic, copy) NSString *stockCode;
@property (nonatomic, copy) NSString *securityType;
@property (nonatomic, copy) NSString *stockType;
@end

//List<StrategyVo>	strategys	量化策略列表
@interface QXMFatherHomeStrategysModel : NSObject
//策略id
@property (nonatomic, copy) NSString *strategyId;
//涨跌幅
@property (nonatomic, copy) NSString *avgRose;
//avgRoseName = 平均涨幅;
@property (nonatomic, copy) NSString *avgRoseName;
@property (nonatomic, copy) NSString *strategyName;
//类型
@property (nonatomic, copy) NSString *strategyType;
@property (nonatomic, copy) NSString *concernNumber;

//2.3
//private String maxUpOrDown;	//最高涨幅
@property (nonatomic, copy) NSString *maxUpOrDown;
//private String maxUpOrDownName = "最高涨幅";
@property (nonatomic, copy) NSString *maxUpOrDownName;
//private String winRate;	//胜率
@property (nonatomic, copy) NSString *winRate;
//private String winRateName = "胜率";
@property (nonatomic, copy) NSString *winRateName;
//private String winColor;	//胜率颜色
@property (nonatomic, copy) NSString *winColor;

@property (nonatomic, copy) NSString *followCount;

@end

//List<EventNoticeVo>	eventNotices	事件驱动列表
@interface QXMFatherHomeEventNoticesModel : NSObject
//stockCode = 603680;
//stockType = GGZC;
//titleLabel = 利好;
//lastPriceD = 4.26;
//stockName = 今创集团;
//count = 5支;
//securityId = 603680;
//title = 高管增持;
//changePrice = +2.26;
//changePercent = +10.26%;

@property (nonatomic, copy) NSString *title;
@property (nonatomic, copy) NSString *titleLabel;
@property (nonatomic, copy) NSString *count;
@property (nonatomic, copy) NSString *stockName;
//
@property (nonatomic, copy) NSString *lastPriceD;
@property (nonatomic, copy) NSString *changePrice;
@property (nonatomic, copy) NSString *changePercent;

@property (nonatomic, copy) NSString *eventType;
@property (nonatomic, copy) NSString *publishTime;
@property (nonatomic, copy) NSString *color;

@end


//几何快报
@interface QXMFatherHomeItemPop : NSObject
//创建时间
@property (nonatomic, copy) NSString *createTime;
//标题
@property (nonatomic, copy) NSString *title;
//String	发布站点
@property (nonatomic, copy) NSString *publishSite;
//String	新闻url
@property (nonatomic, copy) NSString *newsUrl;


@end















