//
//  Target_Home.m
//  FBSnapshotTestCase
//
//  Created by 张晓檬 on 2018/3/29.
//

#import "Target_Home.h"

#import "QXMFatherHomeTbaListMoreVC.h"

@implementation Target_Home
#pragma mark - 首页更多功能
- (UIViewController *)Action_kXM_MediatorActionHomeTbaListMoreVC:(NSDictionary *)params
{
    // 因为action是从属于ModuleA的，所以action直接可以使用ModuleA里的所有声明
    QXMFatherHomeTbaListMoreVC *viewController = [[QXMFatherHomeTbaListMoreVC alloc] init];
    //    viewController.valueLabel.text = params[@"key"];
//    CKLog(@"params==%@",params);
    return viewController;
}

@end
