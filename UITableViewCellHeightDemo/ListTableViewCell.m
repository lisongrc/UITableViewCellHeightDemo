//
//  ListTableViewCell.m
//  UITableViewCellHeightDemo
//
//  Created by lisong on 2016/10/8.
//  Copyright © 2016年 lisong. All rights reserved.
//

#import "ListTableViewCell.h"

@interface ListTableViewCell ()

@property (weak, nonatomic) IBOutlet UIImageView *iconImageView;
@property (weak, nonatomic) IBOutlet UILabel *desclabel;

@end

@implementation ListTableViewCell

- (void)awakeFromNib
{
    [super awakeFromNib];
}

- (void)setModel:(ListModel *)model
{
    _model = model;
    
    self.iconImageView.image = [UIImage imageNamed:@"image.jpg"];
    self.desclabel.text = model.desc;
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated
{
    [super setSelected:selected animated:animated];
}

@end
