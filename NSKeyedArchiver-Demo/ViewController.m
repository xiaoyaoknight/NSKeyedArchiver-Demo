//
//  ViewController.m
//  NSKeyedArchiver-Demo
//
//  Created by wangzelong on 2020/3/3.
//  Copyright © 2020 wangzelong. All rights reserved.
//

#import "ViewController.h"
#import "AViewController.h"
#import "BViewController.h"
#import "CViewController.h"
#import "DViewController.h"
#import "EViewController.h"
#import "FViewController.h"
#import "GViewController.h"
#import "HViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    NSString *path = NSHomeDirectory();
    NSLog(@"------------%@", path);
}
- (IBAction)plist:(id)sender {
    AViewController *vc = [AViewController new];
    [self.navigationController pushViewController:vc animated:YES];
}

- (IBAction)preference:(id)sender {
    BViewController *vc = [BViewController new];
    [self.navigationController pushViewController:vc animated:YES];
}

- (IBAction)archiver:(id)sender {
    CViewController *vc = [CViewController new];
    [self.navigationController pushViewController:vc animated:YES];
}

- (IBAction)keychain:(id)sender {
    DViewController *vc = [DViewController new];
    [self.navigationController pushViewController:vc animated:YES];
}

- (IBAction)sqlite3:(id)sender {
    EViewController *vc = [EViewController new];
    [self.navigationController pushViewController:vc animated:YES];
}

- (IBAction)fmdb:(id)sender {
    FViewController *vc = [FViewController new];
    [self.navigationController pushViewController:vc animated:YES];
}

- (IBAction)WCDB:(id)sender {
    GViewController *vc = [GViewController new];
    [self.navigationController pushViewController:vc animated:YES];
}

- (IBAction)CoreData:(id)sender {
    HViewController *vc = [HViewController new];
    [self.navigationController pushViewController:vc animated:YES];
}

@end
