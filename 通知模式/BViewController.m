//
//  BViewController.m
//  通知模式
//
//  Created by yg on 2017/8/2.
//  Copyright © 2017年 TBB. All rights reserved.
//

#import "BViewController.h"

@interface BViewController ()

@end

@implementation BViewController
- (instancetype)init
{
    self = [super init];
    if (self) {
        // 向通知中心注册，需要监听某通知
        // Observer ：哪个对象成为观察者（成为观察者就能接收通知）
        // selector：接收到了通知，哪么方法被执行
        // name：监听哪个通知
        // object：通知中的其他信息，很少用
        [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(receiveNotification:) name:@"Update" object:nil];
    }
    return self;
}


- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor whiteColor];

}
//通知一到达，自动执行此方法
-(void)receiveNotification:(NSNotification *)notification
{
    NSDictionary *userInfo = notification.userInfo;
    NSLog(@"%@已经更新到%@了",userInfo[@"title"],userInfo[@"episode"]);
}
- (void)dealloc
{
    [[NSNotificationCenter defaultCenter] removeObserver:self];
}
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
