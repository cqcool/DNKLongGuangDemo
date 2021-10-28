//
//  DNKProtocolService.h
//  smarthome
//
//  Created by 陈群 on 2021/10/14.
//  Copyright © 2021 dnake. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <DnakeSDK/DNKPublic.h>
NS_ASSUME_NONNULL_BEGIN
/// 响应DNKPublicProtocol协议事件，需要先通过dnkRegisterProtocol: implClass:进行注册
@interface DNKProtocolService : NSObject<DNKPublicProtocol>

@end

NS_ASSUME_NONNULL_END
