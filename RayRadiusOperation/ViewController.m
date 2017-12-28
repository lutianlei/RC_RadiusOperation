//
//  ViewController.m
//  RayRadiusOperation
//
//  Created by lutianlei on 2017/12/28.
//  Copyright © 2017年 Ray. All rights reserved.
//

#import "ViewController.h"
#import "RayRadiusView.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor blackColor];
    
    UIImageView *imageView = [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"1.png"]];
    imageView.frame = CGRectMake(self.view.frame.size.width/2 - 70, self.view.frame.size.height/2 - 70, 140, 140);
    [self.view addSubview:imageView];
    
    RayRadiusView *moveView = [[RayRadiusView alloc] init];
    [moveView starAnimation:imageView];
    
    [self.view addSubview:moveView];
    
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
