//
//  HomeViewController.m
//  HelloLoggingFramework
//
//  Created by Developer PopBox on 12/3/19.
//  Copyright © 2019 Developer PopBox. All rights reserved.
//

#import "HomeViewController.h"
#import "LoginViewController.h"

@interface HomeViewController ()

@end

@implementation HomeViewController


- (void)viewDidLoad {
    [super viewDidLoad];
    NSLog(@"Haha");
    NSLog(@"%@", self);
    // Do any additional setup after loading the view from its nib.
}
- (IBAction)btnGo:(id)sender {
    LoginViewController *add = [[LoginViewController alloc] init];
    [self presentViewController:add animated:YES completion:nil];
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
