//
//  NDGiftModel.h
//  OC_GiftAnimation
//
//  Created by ljq on 2019/1/25.
//  Copyright © 2019年 ljq. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "NDUserModel.h"
#import "NDGifts.h"

NS_ASSUME_NONNULL_BEGIN

@interface NDGiftModel : NSObject

@property (nonatomic, strong) NDGifts *gift;
@property (nonatomic, strong) NDUserModel *user;

/** 礼物操作的唯一Key 由用户ID+礼物ID生成 */
@property (nonatomic, copy) NSString *giftKey;
// 气泡动画显示时间 秒
@property (nonatomic, assign) CGFloat time;
// 单次收到礼物的数量
@property (nonatomic, assign) NSInteger giftCount;
// 礼物连击上限
@property (nonatomic, assign) NSInteger doubleHitCount;

@end

NS_ASSUME_NONNULL_END
