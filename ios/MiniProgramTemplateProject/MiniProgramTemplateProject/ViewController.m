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
    
     [[MPSDK sharedInstance] launchMain:@"66d3b2fd20"];
}

@end
