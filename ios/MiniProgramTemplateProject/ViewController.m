//
//  ViewController.m
//  MiniProgramTemplateProject
//
//  Created by meifenglin on 2019/9/27.
//  Copyright © 2019 meifenglin. All rights reserved.
//
                       
#import "ViewController.h"
#import <MiniProgram/MiniProgram.h>

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    NSString *filePath = [[NSBundle mainBundle] pathForResource:@"Config"ofType:@"plist"];
    NSDictionary *info = [NSDictionary dictionaryWithContentsOfFile:filePath];
    NSString *appId = info[@"appId"];
    [[MPSDK sharedInstance] launchMain:appId];
}

@end
