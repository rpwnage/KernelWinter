//
//  ViewController.m
//  multi_path
//
//  Created by Ian Beer on 5/28/18.
//  Copyright © 2018 Ian Beer. All rights reserved.
//
#include "sploit.h"
#import "ViewController.h"
#import "../Pods/FallingSnow/FallingSnow/FallingSnow.h"
#import "../Pods/FallingSnow/FallingSnow/XMASFallingSnowView.h"
#import "../Pods/FallingSnow/FallingSnow/UIView+XMASFallingSnow.h"








@interface ViewController ()




@end

@implementation ViewController

- (void)viewDidLoad {
  [super viewDidLoad];
    XMASFallingSnowView *snowOverlay = [[XMASFallingSnowView alloc] initWithFrame:self.view.frame];
      [self.view addSubview:snowOverlay];
      [snowOverlay beginSnowAnimation];
  [self.SpinningWheel startAnimating];
    go();
    _Console.text = [_Console.text stringByAppendingString:@"\nftp0 done!"];
}


- (void)didReceiveMemoryWarning {
  [super didReceiveMemoryWarning];
  // Dispose of any resources that can be recreated.
}


@end
