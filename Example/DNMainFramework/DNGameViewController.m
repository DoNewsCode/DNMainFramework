//
//  DNGameViewController.m
//  DNMainFramework_Example
//
//  Created by donews on 2018/9/11.
//  Copyright © 2018年 540563689@qq.com. All rights reserved.
//

#import "DNGameViewController.h"

@interface DNGameViewController ()

@end

@implementation DNGameViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.view.backgroundColor = [UIColor yellowColor];
    self.navigationItem.title = @"游戏";
    self.navigationItem.leftBarButtonItem = [[UIBarButtonItem alloc] initWithTitle:@"按钮" style:(UIBarButtonItemStyleDone) target:nil action:nil];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
