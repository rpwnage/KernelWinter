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
#include <sys/wait.h>
#include <spawn.h>

#include <sys/xattr.h>

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
    //_Console.text = [_Console.text stringByAppendingString:@"\nftp0 done!"];
    [self Console_after_sploit];
}


- (void)didReceiveMemoryWarning {
  [super didReceiveMemoryWarning];
  // Dispose of any resources that can be recreated.
}


- (int) Console_after_sploit {
    NSLog(@"test");
    self.Console.text = [_Console.text stringByAppendingString:@"\nExploit runned sucessfully!"];
    self.Console.text = [_Console.text stringByAppendingString:@"\nRunning external Objective C Files, for testing purposes..."];
    [self start_SFTP];
    return 0;
}

- (void) test_read {
    NSFileManager *filemgr;
    NSString *currentpath;
    NSArray *filelist;
    int i;
    filemgr = [NSFileManager defaultManager];
    filelist = [filemgr contentsOfDirectoryAtPath: @"/bin/" error: nil];
    NSInteger *count = [filelist count];
    for (i = 0; i < count; i++)
       // NSLog (@"%@", [filelist objectAtIndex: i]);
        self.Console.text = [_Console.text stringByAppendingString:(@"\n %@", [filelist objectAtIndex: i])];

}

int start_SFTP(){

}

@end

