//
//  ViewController.m
//  DrawRect_text
//
//  Created by fangjianli on 14-11-14.
//  Copyright (c) 2014年 计兮网（北京）科技有限公司. All rights reserved.
//

#import "ViewController.h"
#import "Draw.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
//    Draw *draw = [[Draw alloc] initWithFrame:self.view.frame];
//    draw.backgroundColor = [UIColor whiteColor];
//    [self.view addSubview:draw];

    //C++ Function
    SayHello();
   NSInteger sss = backHe(12,34);
    NSLog(@"The value is: %d", sss);
    
    
//    Sample *sample = [[Sample alloc] initWithValue:10];
//    [sample increaseValue:20];
//    [sample accumulateValue];
//    
//    NSLog(@"The value is: %@", sample);
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
