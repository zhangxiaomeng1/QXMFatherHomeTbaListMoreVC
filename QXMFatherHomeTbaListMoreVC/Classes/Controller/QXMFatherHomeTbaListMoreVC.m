//
//  QXMFatherHomeTbaListMoreVC.m
//  QXM
//
//  Created by 张晓檬 on 2017/9/5.
//  Copyright © 2017年 xiangshang360.com. All rights reserved.
//

#import "QXMFatherHomeTbaListMoreVC.h"

//#import "QXMNetWorkManager.h"
//
//#import "QXMFatherHomeIndexCollectionCell.h"
////新股中心
//#import "QXMNewStockCenterVC.h"
////龙虎榜单
//#import "QXMBillboardVC.h"
////融资融券
//#import "QXMMarginTradingVC.h"
///** 财经日历 */
//#import "QXMEconomicCalendarVC.h"
////相似k线
//#import "QXMSimilarKSearchVC.h"
////智能复盘
//#import "QXMIntelligentCheckingVC.h"
//#import "QXMStockIndexFatherVC.h"

@interface QXMFatherHomeTbaListMoreVC ()<UICollectionViewDataSource, UICollectionViewDelegate>

@property (nonatomic, strong) UICollectionView *bottomTabListcollectionView;// 新股中心等8个方框的collectionView
@property (nonatomic, strong) NSMutableArray *bottomTabList;

@end

@implementation QXMFatherHomeTbaListMoreVC

- (void)viewDidLoad {
    [super viewDidLoad];
    self.title = @"功能";
    
    // 新股中心等8个方框的collectionView
    [self.view addSubview:self.bottomTabListcollectionView];
    
//    [self httpPostWithHeaderRefresh:YES];
}
- (void)viewWillAppear:(BOOL)animated{
    [super viewWillAppear:animated];
    [self.navigationController setNavigationBarHidden:NO animated:YES];
}
-(void)viewWillDisappear:(BOOL)animated{
    [super viewWillDisappear:animated];
}
//- (void)httpPostWithHeaderRefresh:(BOOL)header{
//    __weak typeof(self) weakSelf = self;
//    NSMutableDictionary *dictData = [[NSMutableDictionary alloc] init];
////    dictData[@"type"] = self.type;
//
//
////    [[QXMNetWorkManager alloc] POST:<#(NSString *)#> parameters:<#(id)#> progress:<#^(NSProgress *progress)uploadProgress#> success:<#^(NSURLSessionDataTask *task, id responseObject)success#> failure:<#^(NSURLSessionDataTask *task, NSError *error)failure#>]
//
////    [[QXMNetWorkManager alloc] getHomeBottomTabListData:dictData success:^(NSArray *data) {
////        [weakSelf.bottomTabList removeAllObjects];
////        NSArray *card =  [QXMFatherHomeIndexCollectionModel mj_objectArrayWithKeyValuesArray:data];
////        [weakSelf.bottomTabList addObjectsFromArray:card];
////
////        if (weakSelf.bottomTabList.count > 0) {
////            [XSEmptyView hideEmptyInView:self.view];
////        } else {
////            [XSEmptyView showInView:self.view text:QXM_EmptyViewText];
////        }
////        [self.bottomTabListcollectionView reloadData];
////    } failure:^(NSError *error) {
////        [XSEmptyView showNoNetworkingInView:self.view top:0 height:(SCREEN_HEIGHT - KNavHeight) tapAction:^{
////            [weakSelf httpPostWithHeaderRefresh:YES];
////        }];
////    }];
//}
//#pragma mark - 新股中心等8个方框的collectionView
//static NSString *const CellID = @"QXMFatherHomeIndexCollectionCell";
//- (UICollectionView *)bottomTabListcollectionView{
//    if (_bottomTabListcollectionView == nil) {
//        UICollectionViewFlowLayout *flowLayout = [[UICollectionViewFlowLayout alloc] init];
//        _bottomTabListcollectionView = [[UICollectionView alloc]initWithFrame:CGRectMake(10,0, SCREEN_WIDTH - 20,SCREEN_HEIGHT - KNavHeight) collectionViewLayout:flowLayout];
//        //定义每个UICollectionView 横向的间距
//        flowLayout.minimumLineSpacing = 0;
//        //定义每个UICollectionView 纵向的间距
//        flowLayout.minimumInteritemSpacing = 0;
//        //定义每个UICollectionView 的边距距
//        flowLayout.sectionInset = UIEdgeInsetsMake(0, 0, 0, 0);//上左下右
//        //注册cell
//        [_bottomTabListcollectionView registerNib:[UINib nibWithNibName:CellID bundle:nil] forCellWithReuseIdentifier:CellID];
//        //设置代理
//        _bottomTabListcollectionView.delegate = self;
//        _bottomTabListcollectionView.dataSource = self;
//        //背景颜色
//        _bottomTabListcollectionView.backgroundColor = DEFAULTWHITE;
//        _bottomTabListcollectionView.showsVerticalScrollIndicator = FALSE;
//        _bottomTabListcollectionView.showsHorizontalScrollIndicator = FALSE;
//    }
//    return _bottomTabListcollectionView;
//}
//#pragma mark - UICollectionView delegate dataSource - 定义展示的Section的个数
//-(NSInteger)numberOfSectionsInCollectionView:(UICollectionView *)collectionView{
//    return 1;
//}
//#pragma mark - 定义展示的UICollectionViewCell的个数
//-(NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section{
//    return self.bottomTabList.count;
//}
//#pragma mark 每个UICollectionView展示的内容
//-(UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath{
//    QXMFatherHomeIndexCollectionCell *cell = [collectionView dequeueReusableCellWithReuseIdentifier:CellID forIndexPath:indexPath];
//    QXMFatherHomeIndexCollectionModel *model = self.bottomTabList[indexPath.row];
//    cell.model = model;
//    return cell;
//}
//#pragma mark UICollectionView被选中时调用的方法
//-(void)collectionView:(UICollectionView *)collectionView didSelectItemAtIndexPath:(NSIndexPath *)indexPath{
//    QXMFatherHomeIndexCollectionModel *model = self.bottomTabList[indexPath.row];
////    [MobClick event:model.tabTitle];
////    [QXMUtility trackName:@"功能列表" data:@{@"名称":model.tabTitle}];
//    if ([[self blockDictionary] valueForKey:model.tabType]) {//字典，减少else if判断
//        QXMWeakSelf
//        void (^block)(UIViewController *,NSString *) =  [[self blockDictionary] valueForKey:model.tabType];
//        block(weakSelf,model.tabTitle);
//    } else {//BEGINNERS 新手学堂 和其他H5界面
////        [QXMUtility jumpWebH5ByController:self url:model.url isRightItem:model.isHaveShare isHiddenNavagation:model.isHiddenNavagation isHaveComment:model.isHaveComment];
//    }
//}
//#pragma mark -- block字典
//-(NSDictionary *)blockDictionary {
//    return @{
//             @"IPO":[^(UIViewController *VC,NSString *data) {//新股中心
////                 QXMNewStockCenterVC *newStock= [[QXMNewStockCenterVC alloc] init];
////                 [VC.navigationController pushViewController:newStock animated:YES];
//             } copy],
////             @"BILLBOARD":[^(UIViewController *VC,NSString *data) {//龙虎榜
////                 QXMBillboardVC *bill= [[QXMBillboardVC alloc] init];
////                 [VC.navigationController pushViewController:bill animated:YES];
////                 [MobClick event:UM_QXMBillboard];
////             } copy],
////             @"ECONOMIC_CALENDAR":[^(UIViewController *VC,NSString *data) {/** 财经日历 */
////                 QXMEconomicCalendarVC *economicCalendar = [[QXMEconomicCalendarVC alloc] init];
////                 [VC.navigationController pushViewController:economicCalendar animated:YES];
////             } copy],
////             @"MARGIN_TRADING":[^(UIViewController *VC,NSString *data) {//融资融券
////                 QXMMarginTradingVC *vc= [[QXMMarginTradingVC alloc] init];
////                 [VC.navigationController pushViewController:vc animated:YES];
////                 [MobClick event:UM_QXMMarginTrading];
////             } copy],
////             @"LIKEKLINE":[^(UIViewController *VC,NSString *data) {//相似k线
////                 QXMSimilarKSearchVC *vc= [[QXMSimilarKSearchVC alloc] init];
////                 vc.title = data;
////                 [VC.navigationController pushViewController:vc animated:YES];
////             } copy],
////             @"ACCOUNT":[^(UIViewController *VC,NSString *data) {/** 开户接口 */
////                 [QXMUtility jumpTKOpenListVC:VC mParams:nil];
////             } copy],
////             @"MULTITRAYLIMIT":[^(UIViewController *VC,NSString *data) {//涨停复盘//智能复盘
////                 QXMIntelligentCheckingVC *vc= [[QXMIntelligentCheckingVC alloc] init];
////                 [VC.navigationController pushViewController:vc animated:YES];
////             } copy],
////             @"STOCKINDEX":[^(UIViewController *VC,NSString *data) {//条件选股
////                 QXMStockIndexFatherVC *vc = [[QXMStockIndexFatherVC alloc] init];
////                 [VC.navigationController pushViewController:vc animated:YES];
////             } copy],
//             };
//}
//- (CGSize)collectionView:(UICollectionView *)collectionView layout:(UICollectionViewLayout *)collectionViewLayout sizeForItemAtIndexPath:(NSIndexPath *)indexPath{
//    return CGSizeMake(_bottomTabListcollectionView.width/4,89);
//}
//- (CGSize)collectionView:(UICollectionView *)collectionView layout:(UICollectionViewLayout*)collectionViewLayout referenceSizeForHeaderInSection:(NSInteger)section{
//    return CGSizeMake(0,0);
//}
//- (CGSize)collectionView:(UICollectionView *)collectionView layout:(UICollectionViewLayout*)collectionViewLayout referenceSizeForFooterInSection:(NSInteger)section{
//    return CGSizeMake(0,0);
//}
//- (NSMutableArray *)bottomTabList {
//    if (_bottomTabList == nil) {
//        _bottomTabList = [NSMutableArray array];
//    }
//    return _bottomTabList;
//}

@end
