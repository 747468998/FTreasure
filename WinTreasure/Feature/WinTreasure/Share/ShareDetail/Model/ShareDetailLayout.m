//
//  ShareDetailLayout.m
//  WinTreasure
//
//  Created by Apple on 16/7/5.
//  Copyright © 2016年 linitial. All rights reserved.
//

#import "ShareDetailLayout.h"
#import "ShareLayout.h"

@implementation ShareDetailLayout

- (instancetype)initWithModel:(ShareModel *)model {
    self = [super init];
    if (self) {
        _model = model;
        [self layout];
    }
    return self;
}

- (void)layout {
    _marginTop = kShareDetailPadding;
    _titleHeight = 0;
    _nameHeight = 0;
    _infoHeight = 0;
    _contentHeight = 0;
    _picHeight = 0;
    _marginBottom = kShareDetailPadding;
    [self layoutTitle];
    [self layoutNameAndTime];
    [self layoutInfoView];
    [self layoutContent];
    [self layoutPics];
    _height += _marginTop;
    _height += _titleHeight;
    _height += _nameHeight;
    _height += _infoHeight;
    _height += _contentHeight;
    _height += _picHeight;
    _height += _marginBottom;
}

- (void)layoutInfoView {
    [self layoutProductName];
    [self layoutPeriod];
    [self layoutParticipate];
    [self layoutLuckyNumber];
    [self layoutPublishTime];
    _infoHeight += kProductInfoMargin;
    _infoHeight += _productNameHeight;
    _infoHeight += kProductInfoMargin;
    _infoHeight += _periodHeight;
    _infoHeight += kProductInfoMargin;
    _infoHeight += _paticipateHeight;
    _infoHeight += kProductInfoMargin;
    _infoHeight += _luckyNumberHeight;
    _infoHeight += kProductInfoMargin;
    _infoHeight += _publishTimeHeight;
    _infoHeight += kProductInfoMargin;

}

#pragma mark - 商品信息
- (void)layoutProductName {
    _productNameHeight = 0;
    _productNameTextLayout = nil;
    NSMutableAttributedString *attributeTitle = [[NSMutableAttributedString alloc]initWithString:[NSString stringWithFormat:@"商品信息：%@",_model.productName]];
    if (attributeTitle.length==0) {
        return;
    }
//    attributeTitle.lineBreakMode = NSLineBreakByTruncatingTail;
    attributeTitle.font = SYSTEM_FONT(14);
    attributeTitle.color = UIColorHex(999999);
    attributeTitle.lineSpacing = 1.0;
    YYTextContainer *container = [YYTextContainer containerWithSize:CGSizeMake(kShareDetailContentWidth, 16)];
//    container.maximumNumberOfRows = 1;
    container.size = CGSizeMake(kShareDetailContentWidth, HUGE);
    _productNameTextLayout = [YYTextLayout layoutWithContainer:container text:attributeTitle];
    _productNameHeight = 16.0 * _productNameTextLayout.rowCount;
}

#pragma mark - 商品期号
- (void)layoutPeriod {
    _periodHeight = 0;
    _periodTextLayout = nil;
    NSMutableAttributedString *attributeTitle = [[NSMutableAttributedString alloc]initWithString:[NSString stringWithFormat:@"商品期号：%@",_model.productPeriod]];
    if (attributeTitle.length==0) {
        return;
    }
    attributeTitle.lineBreakMode = NSLineBreakByTruncatingTail;
    attributeTitle.font = SYSTEM_FONT(14);
    attributeTitle.color = UIColorHex(999999);
    YYTextContainer *container = [YYTextContainer containerWithSize:CGSizeMake(kShareDetailContentWidth, 16)];
    container.maximumNumberOfRows = 1;
    container.size = CGSizeMake(kShareDetailContentWidth, HUGE);
    _periodTextLayout = [YYTextLayout layoutWithContainer:container text:attributeTitle];
    _periodHeight = 16.0 * _periodTextLayout.rowCount;
}

#pragma mark - 本期参与
- (void)layoutParticipate {
    _paticipateHeight = 0;
    _paticipateLayout = nil;
    NSMutableAttributedString *attributeTitle = [[NSMutableAttributedString alloc]initWithString:[NSString stringWithFormat:@"本期参与：%@人",_model.participate]];
    if (attributeTitle.length==0) {
        return;
    }
    attributeTitle.lineBreakMode = NSLineBreakByTruncatingTail;
    attributeTitle.font = SYSTEM_FONT(14);
    attributeTitle.color = UIColorHex(999999);
    YYTextContainer *container = [YYTextContainer containerWithSize:CGSizeMake(kShareDetailContentWidth, 16)];
    container.maximumNumberOfRows = 1;
    container.size = CGSizeMake(kShareDetailContentWidth, HUGE);
    _paticipateLayout = [YYTextLayout layoutWithContainer:container text:attributeTitle];
    _paticipateHeight = 16.0 * _paticipateLayout.rowCount;
}

#pragma mark - 幸运号码
- (void)layoutLuckyNumber {
    _luckyNumberHeight = 0;
    _luckyNumberLayout = nil;
    NSMutableAttributedString *attributeTitle = [[NSMutableAttributedString alloc]initWithString:[NSString stringWithFormat:@"幸运号码：%@",_model.luckyNumber]];
    if (attributeTitle.length==0) {
        return;
    }
    attributeTitle.lineBreakMode = NSLineBreakByTruncatingTail;
    attributeTitle.font = SYSTEM_FONT(14);
    attributeTitle.color = UIColorHex(999999);
    YYTextContainer *container = [YYTextContainer containerWithSize:CGSizeMake(kShareDetailContentWidth, 16)];
    container.maximumNumberOfRows = 1;
    container.size = CGSizeMake(kShareDetailContentWidth, HUGE);
    _luckyNumberLayout = [YYTextLayout layoutWithContainer:container text:attributeTitle];
    _luckyNumberHeight = 16.0 * _luckyNumberLayout.rowCount;
}

#pragma mark - 揭晓时间
- (void)layoutPublishTime {
    _publishTimeHeight = 0;
    _publishTimeLayout = nil;
    NSMutableAttributedString *attributeTitle = [[NSMutableAttributedString alloc]initWithString:[NSString stringWithFormat:@"揭晓时间：%@",_model.publishTime]];
    if (attributeTitle.length==0) {
        return;
    }
    attributeTitle.lineBreakMode = NSLineBreakByTruncatingTail;
    attributeTitle.font = SYSTEM_FONT(14);
    attributeTitle.color = UIColorHex(999999);
    YYTextContainer *container = [YYTextContainer containerWithSize:CGSizeMake(kShareDetailContentWidth, 16)];
    container.maximumNumberOfRows = 1;
    container.size = CGSizeMake(kShareDetailContentWidth, HUGE);
    _publishTimeLayout = [YYTextLayout layoutWithContainer:container text:attributeTitle];
    _publishTimeHeight = 16.0 * _publishTimeLayout.rowCount;
}

#pragma mark - 标题
- (void)layoutTitle {
    _titleHeight = 0;
    _titleTextLayout = nil;
    NSMutableAttributedString *attributeTitle = [[NSMutableAttributedString alloc]initWithString:_model.title];
    if (attributeTitle.length==0) {
        return;
    }
    attributeTitle.lineBreakMode = NSLineBreakByCharWrapping;
    attributeTitle.font = SYSTEM_FONT(16);
    YYTextContainer *container = [YYTextContainer containerWithSize:CGSizeMake(kShareDetailContentWidth, 16)];
    container.maximumNumberOfRows = 0;
    container.size = CGSizeMake(kShareDetailContentWidth, HUGE);
    _titleTextLayout = [YYTextLayout layoutWithContainer:container text:attributeTitle];
    _titleHeight = 16.0*_titleTextLayout.rowCount;
}

#pragma mark - 昵称和时间
- (void)layoutNameAndTime {
    NSString *timeStr = [NSString transToTime:_model.timeSpan];
    if (timeStr.length == 0) {
        _timeTextLayout = nil;
        return;
    }
    NSMutableAttributedString *timeText = [[NSMutableAttributedString alloc] initWithString:timeStr];
    timeText.font = SYSTEM_FONT(13);
    timeText.color = UIColorHex(999999);
    timeText.lineBreakMode = NSLineBreakByTruncatingTail;
    timeText.alignment = NSTextAlignmentRight;
    YYTextContainer *container2 = [YYTextContainer containerWithSize:CGSizeMake(kScreenWidth/2.0, 15)];
    container2.maximumNumberOfRows = 1;
    container2.size = CGSizeMake(kScreenWidth/2.0, HUGE);
    _timeTextLayout = [YYTextLayout layoutWithContainer:container2 text:timeText];

    
    NSString *nameStr = _model.username;
    if (nameStr.length == 0) {
        _nameTextLayout = nil;
        return;
    }
    NSMutableAttributedString *nameText = [[NSMutableAttributedString alloc] initWithString:nameStr];
    nameText.font = SYSTEM_FONT(13);
    nameText.color = [UIColor blueColor];
    nameText.lineBreakMode = NSLineBreakByTruncatingTail;
    YYTextContainer *container = [YYTextContainer containerWithSize:CGSizeMake(kShareDetailContentWidth, 15)];
    container.maximumNumberOfRows = 1;
    container.size = CGSizeMake(kShareDetailContentWidth, HUGE);
    _nameTextLayout = [YYTextLayout layoutWithContainer:container text:nameText];
    _nameHeight = 16*_nameTextLayout.rowCount;
}

#pragma mark - 晒单内容
- (void)layoutContent {
    _contentHeight = 0;
    _contentTextLayout = nil;
    NSMutableAttributedString *attributeTitle = [[NSMutableAttributedString alloc]initWithString:_model.content];
    if (attributeTitle.length==0) {
        return;
    }
    attributeTitle.lineBreakMode = NSLineBreakByCharWrapping;
    attributeTitle.font = SYSTEM_FONT(15);
    attributeTitle.color = UIColorHex(666666);
    ShareContentLinePositionModifier *modifier = [ShareContentLinePositionModifier new];
    modifier.font = SYSTEM_FONT(14);
    modifier.paddingTop = 0;
    modifier.paddingBottom = kContentViewMargin;
    YYTextContainer *container = [YYTextContainer new];
    container.linePositionModifier = modifier;
    container.maximumNumberOfRows = 0;
    container.size = CGSizeMake(kShareDetailContentWidth, HUGE);
    _contentTextLayout = [YYTextLayout layoutWithContainer:container text:attributeTitle];
    if (!_contentTextLayout) {
        return;
    }
    _contentHeight = [modifier heightForLineCount:_contentTextLayout.rowCount];;

}

#pragma mark - 晒单图片
- (void)layoutPics {
    if (_model.imageList.count == 0) {
        return;
    }
    _picSize = CGSizeMake(kScreenWidth-kShareDetailPadding*2, kScreenWidth*3/4.0);
    _picHeight = (_model.imageList.count-1) * kShareDetailPadding + _model.imageList.count * _picSize.height;

}

@end
