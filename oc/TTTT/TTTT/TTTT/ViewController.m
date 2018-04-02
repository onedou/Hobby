//
//  ViewController.m
//  TTTT
//
//  Created by 陈燎 on 01/12/2017.
//  Copyright © 2017 陈燎. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    CGRect screen = [[UIScreen mainScreen] bounds];
    
    CGFloat buttonBarWidth = 316;
    UIView* buttonBar = [[UIView alloc] initWithFrame:CGRectMake((screen.size.width - buttonBarWidth) / 2, 20, buttonBarWidth, 30)];
    
    [self.view addSubview:buttonBar];
    
    // Do any additional setup after loading the view, typically from a nib.
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
