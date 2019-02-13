//
//  NDGiftModel.m
//  OC_GiftAnimation
//
//  Created by ljq on 2019/1/25.
//  Copyright © 2019年 ljq. All rights reserved.
//

#import "NDGiftModel.h"

@implementation NDGiftModel

- (void)setUser:(NDUserModel *)user {
    _user = user;
    [self createGiftID];
}

- (void)setGift:(NDGifts *)gift {
    _gift = gift;
    _time = [_gift.duration floatValue] / 1000;
    
    [self createGiftID];
}

- (void)createGiftID {
    if (_user && _gift) {
        _giftKey = [NSString stringWithFormat:@"%@_%@", self.user.userId, self.gift.giftID];
    }
}

@end
