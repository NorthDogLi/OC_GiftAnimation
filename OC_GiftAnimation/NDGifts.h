//
//  NDGifts.h
//  OC_GiftAnimation
//
//  Created by ljq on 2019/2/12.
//  Copyright © 2019年 ljq. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface NDGifts : NSObject

@property (nonatomic, copy) NSString *giftID;
@property (nonatomic, copy) NSString *name;
@property (nonatomic, copy) NSString *thumbnailUrl;
// vvga礼物URL
@property (nonatomic, copy) NSString *fullscreenAnimationUrl;
// 标签图片
@property (nonatomic, copy) NSString *icon;
@property (nonatomic, strong) NSNumber *weight;
@property (nonatomic, strong) NSNumber *version;
// 气泡动画停留时间  毫秒
@property (nonatomic, strong) NSNumber *duration;
// 该礼物对应的等价币
@property (nonatomic, strong) NSNumber *contributions;

@end

NS_ASSUME_NONNULL_END
