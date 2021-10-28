//
//  DNKViewController.m
//  DNKLongGuangDemo
//
//  Created by cqcool on 10/21/2021.
//  Copyright (c) 2021 cqcool. All rights reserved.
//

#import "DNKViewController.h"
#import "DNKProtocolService.h"

@interface DNKViewController ()

@end

@implementation DNKViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    //在DNKProtocolService里处理摄像头事件
    [DNKProtocolManager dnkRegisterProtocol:@protocol(DNKPublicProtocol) implClass:[DNKProtocolService class]];
}
- (IBAction)loginAction:(id)sender {
    [[DNKModuleManager sharedManager] dnkLoginWithThirdId:@"longGuang-ios1" completedBlock:^(BOOL loginResult) {
        NSLog(@"登录成功");
    }];
}

- (IBAction)pushDnakeAction:(id)sender {
    [[DNKModuleManager sharedManager] pushDnakeModule];
}

@end
