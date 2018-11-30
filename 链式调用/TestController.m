//
//  TestController.m
//  链式调用
//
//  Created by gaojun on 2018/10/27.
//  Copyright © 2018年 gaojun. All rights reserved.
//

#import "TestController.h"
#import "ViewMaker.h"
#import "UIView+Quick.h"

@interface TestController ()

@end

@implementation TestController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
    
    UIView *aView = AllocA(UIView).with.position(50,100).size(100,100).bgColor([UIColor redColor]).intoView(self.view);
    aView.backgroundColor = [UIColor orangeColor];
    
    UIView *view = UIView.new.position(50,300).size(100,100).bgColor([UIColor redColor]).intoView(self.view);
}

- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event {
    [self dismissViewControllerAnimated:YES completion:nil];
}


- (void)dealloc {
    NSLog(@"%s",__func__);
}

@end
