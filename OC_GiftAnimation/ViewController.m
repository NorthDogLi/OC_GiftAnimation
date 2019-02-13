//
//  ViewController.m
//  OC_GiftAnimation
//
//  Created by ljq on 2019/1/25.
//  Copyright © 2019年 ljq. All rights reserved.
//

#import "ViewController.h"
#import "NDGiftAnimation.h"


#define GiftCount   10

@interface ViewController ()<NDGiftAnimationDelegate>

@property (nonatomic, strong) NDGiftAnimation *giftAnimation;
@property (nonatomic, strong) NSMutableArray *giftAry;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.giftAry = [NSMutableArray array];
    for (int i = 0; i<GiftCount; i++) {
        NDUserModel *user = [NDUserModel new];
        user.userId = [NSString stringWithFormat:@"TestID_%d", i];
        user.nickname = [NSString stringWithFormat:@"name_%d", i];
        
        NDGifts *gift = [NDGifts new];
        gift.giftID = [NSString stringWithFormat:@"GiftID_%d", i];
        gift.duration = [NSNumber numberWithInteger:arc4random() % 2000 + 2000];
        gift.name = [NSString stringWithFormat:@"礼物_%d", i];
        
        NDGiftModel *model = [NDGiftModel new];
        model.user = user;
        model.gift = gift;
        model.giftCount = 1;
        
        [self.giftAry addObject:model];
    }
    
    _giftAnimation = [[NDGiftAnimation alloc] initWithView:self.view];
}

- (IBAction)sendGift:(id)sender {
    NDGiftModel *giftData = self.giftAry[arc4random() % GiftCount];
    NDGiftModel *showGift = [NDGiftModel new];
    showGift.user = giftData.user;
    showGift.gift = giftData.gift;
    showGift.giftCount = giftData.giftCount;
    
    [_giftAnimation receivedGift:showGift];
}


- (void)didGiftAnimationUser:(NDUserModel *)user {
    
}


@end
