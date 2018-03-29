//
//  QXMFatherHomeIndexCollectionCell.h
//  QXM
//
//  Created by 张晓檬 on 2017/1/11.
//  Copyright © 2017年 xiangshang360.com. All rights reserved.
//

#import <UIKit/UIKit.h>

#import "QXMFatherHomeItem.h"

#import "XMCategorys.h"
#import <SDWebImage/UIImageView+WebCache.h>

@interface QXMFatherHomeIndexCollectionCell : UICollectionViewCell

//首页4个运营位图片
@property (nonatomic, strong) QXMFatherHomeIndexCollectionModel *model;
//我的界面
@property (nonatomic, strong) QXMFatherHomeIndexCollectionModel *mineModel;


@end
