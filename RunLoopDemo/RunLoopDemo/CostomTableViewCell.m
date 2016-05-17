//
//  CostomTableViewCell.m
//  RunLoopDemo
//
//  Created by lijunjie on 16/5/17.
//  Copyright © 2016年 lijunjie. All rights reserved.
//

#import "CostomTableViewCell.h"
#import "Masonry.h"
#import "UIImageView+WebCache.h"

@interface CostomTableViewCell ()
{
    UIImageView *_imageView;
    NSString *_imageURL;
}

@end



@implementation CostomTableViewCell

- (instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier
{
    self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    if (self) {
        _imageView = [[UIImageView alloc] init];
        [self.contentView addSubview:_imageView];
        [self setNeedsUpdateConstraints];
    }
    return self;
}

- (void)updateConstraints
{
    [super updateConstraints];
    UIView *superView = self.contentView;
    [_imageView mas_updateConstraints:^(MASConstraintMaker *make) {
        make.width.height.top.left.equalTo(superView);
    }];
}

- (void)awakeFromNib {
    [super awakeFromNib];
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];
}

- (void)updateWithURL:(NSString *)url
{
    _imageURL = url;
    [_imageView setImage:nil];
    [self performSelector:@selector(setImage:) withObject:url afterDelay:0 inModes:@[NSDefaultRunLoopMode]];
}

- (void)setImage:(NSString *)url
{
    [_imageView sd_setImageWithURL:[NSURL URLWithString:url]];
}

@end
