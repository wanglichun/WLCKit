//
//  WLCPraiseView.h
//  ShortcutKeyBook
//
//  Created by lichunwang on 16/7/23.
//  Copyright © 2016年 springcome. All rights reserved.
//  点赞控件

#import <UIKit/UIKit.h>

@class WLCPraiseView;

@protocol WLCPraiseViewDelegate <NSObject>

- (void)wlcPraiseViewDidClicked:(WLCPraiseView *)view;

@end

@interface WLCPraiseView : UIView

@property (weak, nonatomic) id<WLCPraiseViewDelegate> delegate;
@property (strong, nonatomic) UILabel *numberLabel;
@property (strong, nonatomic) UIImageView *praiseImageView;
@property (assign, nonatomic) BOOL enabled;

+ (instancetype)wlcPraiseView;

@end
