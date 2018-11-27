//
//  ViewController.m
//  链式调用
//
//  Created by gaojun on 2018/10/27.
//  Copyright © 2018年 gaojun. All rights reserved.
//

#import "ViewController.h"
#import "TestController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
   
}

- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event {
    [self presentViewController:[TestController new] animated:YES completion:nil];
}

@end
