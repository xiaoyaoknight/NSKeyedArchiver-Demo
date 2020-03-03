//
//  BViewController.m
//  NSKeyedArchiver-Demo
//
//  Created by wangzelong on 2020/3/3.
//  Copyright © 2020 wangzelong. All rights reserved.
//

#import "BViewController.h"

@interface BViewController ()
@property (weak, nonatomic) IBOutlet UILabel *test;

@end

@implementation BViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
    self.title = @"preference偏好设置";
    self.view.backgroundColor = [UIColor whiteColor];
}

- (IBAction)save:(id)sender {
    //获得NSUserDefaults文件
    NSUserDefaults *userDefaultes = [NSUserDefaults standardUserDefaults];
    //向偏好设置中写入内容
    [userDefaultes setObject:@"lcf" forKey:@"name"];
    [userDefaultes setInteger:26 forKey:@"age"];
    [userDefaultes setObject:@"boy" forKey:@"sex"];
    //立即同步设置
    [userDefaultes synchronize];
    
}

- (IBAction)read:(id)sender {
    
    //获得NSUserDefaults文件
    NSUserDefaults *userDefaultes = [NSUserDefaults standardUserDefaults];
    //读取偏好设置
    NSString *name = [userDefaultes objectForKey:@"name"];
    NSInteger age = [userDefaultes integerForKey:@"age"];
    NSString *sexStr = [userDefaultes objectForKey:@"sex"];
    NSLog(@"\n%@\n%ld\n%@",name,age,sexStr);
    
    self.test.text = [NSString stringWithFormat:@"%@%ld%@",name,age,sexStr];
    
}


@end
