//
//  CViewController.m
//  NSKeyedArchiver-Demo
//
//  Created by wangzelong on 2020/3/3.
//  Copyright © 2020 wangzelong. All rights reserved.
//

#import "CViewController.h"
#import "Person.h"

@interface CViewController ()

@property (weak, nonatomic) IBOutlet UILabel *test;
@end

@implementation CViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
    self.title = @"NSKeyedArchiver:归档和解档";
    self.view.backgroundColor = [UIColor whiteColor];
}

- (IBAction)save:(id)sender {
    //保存地址
    NSString *path = NSSearchPathForDirectoriesInDomains(NSDocumentDirectory, NSUserDomainMask, YES).firstObject;
    //文件名
    NSString *filePath = [path stringByAppendingPathComponent:@"wyp.data"];
    Person *save = [[Person alloc] init];
    //设置数据
    save.name = @"lcf";
    save.age = 26;
    save.sex = 1;
    [NSKeyedArchiver archiveRootObject:save toFile:filePath];
    
}

- (IBAction)read:(id)sender {
    
    NSString *path = NSSearchPathForDirectoriesInDomains(NSDocumentDirectory, NSUserDomainMask, YES).firstObject;
    NSString *filePath = [path stringByAppendingPathComponent:@"wyp.data"];
    Person *save = [NSKeyedUnarchiver unarchiveObjectWithFile:filePath];
    if (save) {
        NSLog(@"\n%@\n%ld\n%d",save.name,save.age,save.sex);
        self.test.text = [NSString stringWithFormat:@"%@%ld%d",save.name,save.age,save.sex];
    }
}

@end
