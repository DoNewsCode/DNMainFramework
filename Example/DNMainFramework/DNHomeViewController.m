//
//  DNHomeViewController.m
//  DNMainFramework_Example
//
//  Created by donews on 2018/9/11.
//  Copyright © 2018年 540563689@qq.com. All rights reserved.
//

#import "DNHomeViewController.h"
#import "DNViewController.h"

@interface DNHomeViewController ()

@end

@implementation DNHomeViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.view.backgroundColor = [UIColor greenColor];
    self.navigationItem.title = @"首页";
    
   
    self.navigationItem.rightBarButtonItem = [[UIBarButtonItem alloc] initWithTitle:@"点我" style:(UIBarButtonItemStyleDone) target:self action:@selector(s_clickEvent)];
//    [self.navigationItem.rightBarButtonItem setTitleTextAttributes:@{NSFontAttributeName:[UIFont boldSystemFontOfSize:12], NSForegroundColorAttributeName : [UIColor orangeColor]} forState:UIControlStateNormal];
}

- (void)s_clickEvent {
    DNViewController *vc = [[DNViewController alloc] init];
    [self.navigationController pushViewController:vc animated:YES];
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
