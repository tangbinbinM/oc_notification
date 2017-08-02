//
//  ViewController.m
//  通知模式
//
//  Created by yg on 2017/8/2.
//  Copyright © 2017年 TBB. All rights reserved.
//

#import "ViewController.h"
#import "BViewController.h"
@interface ViewController ()

@end

@implementation ViewController
- (IBAction)broadcast:(id)sender {
    BViewController *bvc = [[BViewController alloc] init];

    
    [self.navigationController pushViewController:bvc animated:YES];
    
    // 1.获取系统提供的通知中心对象
    NSNotificationCenter *center = [NSNotificationCenter defaultCenter];
    
    // 2.准备要发送的信息的字典
    NSDictionary *userInfo =
    @{
      @"title":@"冰与火之歌",
      @"episode":@"第3集"
      };
    // 3.向中心发送通知
    // name:通知名称
    // object:发送方对象是谁（通知是谁发送的）
    // userInfo: 通知中携带的具体的信息
    [center postNotificationName:@"Update" object:self userInfo:userInfo];
}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
