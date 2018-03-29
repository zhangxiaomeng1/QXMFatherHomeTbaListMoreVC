//
//  QXMFatherHomeIndexCollectionCell.m
//  QXM
//
//  Created by 张晓檬 on 2017/1/11.
//  Copyright © 2017年 xiangshang360.com. All rights reserved.
//

#import "QXMFatherHomeIndexCollectionCell.h"

@interface QXMFatherHomeIndexCollectionCell ()


@property (weak, nonatomic) IBOutlet UIImageView *tabImg;
@property (weak, nonatomic) IBOutlet NSLayoutConstraint *tabImgTop;
@property (weak, nonatomic) IBOutlet NSLayoutConstraint *tabImgWidth;
@property (weak, nonatomic) IBOutlet NSLayoutConstraint *tabImgHeight;

@property (weak, nonatomic) IBOutlet UILabel *tabTitle;
@property (weak, nonatomic) IBOutlet NSLayoutConstraint *tabTitleTop;


@end


@implementation QXMFatherHomeIndexCollectionCell

- (void)awakeFromNib {
    [super awakeFromNib];
    // Initialization code
}

- (void)setModel:(QXMFatherHomeIndexCollectionModel *)model{
    _model = model;
    self.tabImgWidth.constant = self.tabImgHeight.constant = 50;
    self.tabImgTop.constant = 6;
    self.tabTitleTop.constant = 0;
    
//    [self.tabImg sd_setImageWithURL:[NSURL URLWithString:_model.tabImg] placeholderImage:nil];

    self.tabTitle.text = _model.tabTitle;
//    self.tabTitle.textColor = [UIColor colorWithHexString64:_model.tabTitleColor];
}
-(void)setMineModel:(QXMFatherHomeIndexCollectionModel *)mineModel{
    _mineModel = mineModel;
    self.tabImgWidth.constant = self.tabImgHeight.constant = 30;
    self.tabImgTop.constant = 16;
    self.tabTitleTop.constant = 10;
    self.tabImg.image = [UIImage imageNamed:_mineModel.tabImg];
    self.tabTitle.text = _mineModel.tabTitle;
}
@end
