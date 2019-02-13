//
//  NDUserModel.h
//  OC_GiftAnimation
//
//  Created by ljq on 2019/1/25.
//  Copyright © 2019年 ljq. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface NDUserModel : NSObject

/**用户 id*/
@property (nonatomic, copy) NSString *userId;
/** 姓名 */
@property (nonatomic, copy) NSString *nickname;
// 头像
@property (nonatomic, copy) NSString *avatar;

@end

NS_ASSUME_NONNULL_END
