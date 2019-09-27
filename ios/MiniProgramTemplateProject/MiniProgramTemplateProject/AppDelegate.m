//
//  AppDelegate.m
//  MiniProgramTemplateProject
//
//  Created by meifenglin on 2019/9/27.
//  Copyright © 2019 meifenglin. All rights reserved.
//

#import "AppDelegate.h"
#import <MiniProgram/MiniProgram.h>

@interface AppDelegate ()

@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    // Override point for customization after application launch.
    
    // 创建小程序窗口管理器
    WindowManager *windowManager = [[LRUWindowManager alloc]init];
    // 允许在后台运行的小程序最大数量
    windowManager.cacheCount = 3;

    // 初始化配置
    Config *config = [Config defaultConfig];
    config.windowManager = windowManager;
        
    // 设置存储路径或使用默认值
    // config.storagePath = @"";
        
    // 设置是否开启域名白名单拦截功能
    config.isCheckHostValid = NO;

    // 初始化小程序SDK
    MPSDK *mpSDK = [MPSDK sharedInstance];
    [mpSDK initWithConfig:config];
    
    return YES;
}

@end
