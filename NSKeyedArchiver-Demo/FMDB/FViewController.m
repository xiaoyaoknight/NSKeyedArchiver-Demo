//
//  FViewController.m
//  NSKeyedArchiver-Demo
//
//  Created by wangzelong on 2020/3/3.
//  Copyright © 2020 wangzelong. All rights reserved.
//

#import "FViewController.h"

@interface FViewController ()
@property (weak, nonatomic) IBOutlet UILabel *test1;

@property (weak, nonatomic) IBOutlet UILabel *test2;
@end

@implementation FViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
    self.title = @"FMDB";
    self.view.backgroundColor = [UIColor whiteColor];
    
    // 目前推荐使用WCDB
    self.test1.text = @" [FMDB-Demo](https://github.com/xiaoyaoknight/FFDB-Demo.git)";
    // [FMDB-Demo](https://github.com/xiaoyaoknight/FFDB-Demo.git)
    
    self.test2.text = @"[**FMDB的gitHub地址**](https://link.jianshu.com?t=https://github.com/ccgus/fmdb)";
    //注：[**FMDB的gitHub地址**](https://link.jianshu.com?t=https://github.com/ccgus/fmdb)

}



@end
