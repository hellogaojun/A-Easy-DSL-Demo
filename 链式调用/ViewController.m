//
//  ViewController.m
//  链式调用
//
//  Created by gaojun on 2018/10/27.
//  Copyright © 2018年 gaojun. All rights reserved.
//

#import "ViewController.h"
#import "TestController.h"
#import "NSDictionary+Quick.h"
#import "UIView+Quick.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
   
    NSDictionary *dict = @{@"name":@"gaojun",@"age":[NSString stringWithFormat:@"%d",99],@"height":@(174),@"hobbies":@[@"reading",@"eating",@"runing"],@"others":@{@"one":@"111",@"two":@"222"},@"scores":[NSString stringWithFormat:@"%.1f",99.8]};
    NSLog(@"name:%@---age:%ld---hobbies:%@---otheras:%@---height:%@---score1:%f---score2:%f",dict.str(@"name"),(long)dict.i(@"age"),dict.arr(@"hobbies"),dict.dic(@"others"),dict.num(@"height"),dict.f(@"scores"),dict.d(@"scores"));
    
    UIView *view = UIView.new.position(50,100).size(100,100).bgColor([UIColor redColor]).intoView(self.view);
   
}

- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event {
    [self presentViewController:[TestController new] animated:YES completion:nil];
}

@end
