//
//  SettingCell.h
//  WinTreasure
//
//  Created by Apple on 16/6/24.
//  Copyright © 2016年 linitial. All rights reserved.
//

#import <UIKit/UIKit.h>

typedef void(^SettingCellLogoutBlock)(void);

@interface SettingCell : UITableViewCell

@property (nonatomic, strong) NSIndexPath *indexpath;

@property (nonatomic, copy) SettingCellLogoutBlock logout;

+ (instancetype)cellWithTableView:(UITableView *)tableview;


@end
