//
//  ViewController.m
//  DEMO-DCTimerManager
//
//  Created by DanaChu on 16/9/5.
//  Copyright © 2016年 DanaChu. All rights reserved.
//

#import "ViewController.h"
#import "DCTimerManager.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    // 相同name 的 timer 会被覆盖，
    [[DCTimerManager shareInstance] timerWithTimerName:@"com.timer.DCTimerManager" timeInterval:1.0 repeat:YES action:^{
        NSLog(@"%@", [NSDate date]);
    }];
    
    [[DCTimerManager shareInstance] timerWithTimerName:@"com.timer.DCTimerManager" timeInterval:1.0 repeat:YES action:^{
        NSLog(@"hi- %@", [NSDate date]);
    }];
}

- (void)dealloc{
    
    // 非必须的
    [[DCTimerManager shareInstance] invalidateWithName:@"com.timer.DCTimerManager"];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
