//
//  CustomTableViewCell.m
//  testTableViewCellHeight
//
//  Created by FQL on 16/10/17.
//  Copyright © 2016年 EddieFan. All rights reserved.
//

#import "CustomTableViewCell.h"
#import "Masonry.h"



@interface CustomTableViewCell ()



@end


@implementation CustomTableViewCell

- (instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier {
    self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    
    if (self) {
        self.contentView.layer.borderWidth = 1;
        self.contentView.layer.borderColor = [UIColor redColor].CGColor;
        
        [self drawSubview];
        
        [self addConstraint];
    }
    return self;
}


-(void)drawSubview
{
    //headImageview
    UIImageView *imagev = [[UIImageView alloc] init];
    imagev.contentMode = UIViewContentModeScaleAspectFit;
    imagev.backgroundColor = [UIColor whiteColor];
    imagev.layer.borderColor = [UIColor blackColor].CGColor;
    imagev.layer.borderWidth = 2;
    [self.contentView addSubview:imagev];
    self.headImage = imagev;
    
    
    UILabel *titleLb = [[UILabel alloc] init];
    titleLb.numberOfLines = 0;
    [self.contentView addSubview:titleLb];
    self.titleLabel = titleLb;
}

-(void)addConstraint{
    [self.headImage mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.left.equalTo(self.contentView);
        make.width.height.mas_equalTo(50);
    }];
    
    [self.titleLabel mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.right.equalTo(self.contentView);
        make.left.equalTo(self.headImage.mas_right).offset(10);
        make.height.equalTo(self.contentView);
    }];
}

-(void)setDict:(NSDictionary *)dict
{
    self.headImage.image = [UIImage imageNamed:@"test'"];
    self.titleLabel.text = dict[@"title"];
}




- (void)awakeFromNib {
    [super awakeFromNib];
    // Initialization code
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

@end
