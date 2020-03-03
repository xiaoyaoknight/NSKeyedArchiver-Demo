//
//  AViewController.m
//  NSKeyedArchiver-Demo
//
//  Created by wangzelong on 2020/3/3.
//  Copyright © 2020 wangzelong. All rights reserved.
//

#import "AViewController.h"

@interface AViewController ()
@property (weak, nonatomic) IBOutlet UILabel *textLabel;

@end

@implementation AViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
    self.title = @"plist";
    self.view.backgroundColor = [UIColor whiteColor];
}

- (IBAction)write:(id)sender {
    NSDictionary *dict = @{
        @"name":@"zelong",
        @"age" :@(18),
        @"size" : @(180)};
    [self writeToPlist:dict plistName:@"MyPlist"];
}

- (IBAction)read:(id)sender {
    NSDictionary *dict = [self readFromPlistWithPlistName:@"MyPlist"];
    
    
    self.textLabel.text = [NSString stringWithFormat:@"name=%@, age=%@, 身高=%@", [dict valueForKey:@"name"], [dict valueForKey:@"age"], [dict valueForKey:@"size"]];
}

/**
 写入数据
 */
-(void)writeToPlist:(NSDictionary *)dict plistName:(NSString *)plistName {
    //存取路径
    NSString *path = NSSearchPathForDirectoriesInDomains(NSDocumentDirectory, NSUserDomainMask, YES).firstObject;
    //路径中文件名
    NSString *filePath = [path stringByAppendingPathComponent:plistName];
    //序列化,把数据存入指定目录的plist文件
    BOOL a = [dict writeToFile:filePath atomically:YES];
    if (a) {
        UIAlertController *alertController = [UIAlertController alertControllerWithTitle:@"写入成功" message:nil preferredStyle:UIAlertControllerStyleAlert];
        UIAlertAction *know = [UIAlertAction actionWithTitle:@"我知道了" style:UIAlertActionStyleDefault handler:^(UIAlertAction * _Nonnull action) {
            
        }];
        [alertController addAction:know];
        [self presentViewController:alertController animated:YES completion:nil];
    } else {
        UIAlertController *alertController = [UIAlertController alertControllerWithTitle:@"写入失败" message:nil preferredStyle:UIAlertControllerStyleAlert];
        UIAlertAction *know = [UIAlertAction actionWithTitle:@"我知道了" style:UIAlertActionStyleDefault handler:^(UIAlertAction * _Nonnull action) {
        }];
        [alertController addAction:know];
        [self presentViewController:alertController animated:YES completion:nil];
    }
}
/**
 根据plist文件名读取数据
 */
- (NSDictionary *)readFromPlistWithPlistName:(NSString *)plistName{
    //存取路径
    NSString *path = NSSearchPathForDirectoriesInDomains(NSDocumentDirectory, NSUserDomainMask, YES).firstObject;
    //路径中文件名
    NSString *filePath = [path stringByAppendingPathComponent:plistName];
    NSDictionary *resultDict = [NSDictionary dictionaryWithContentsOfFile:filePath];
    return resultDict;
}


@end
