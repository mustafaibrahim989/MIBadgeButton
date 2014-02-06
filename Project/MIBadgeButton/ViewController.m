//
//  ViewController.m
//  MIBadgeButton
//
//  Created by Mustafa Ibrahim on 2/3/14.
//  Copyright (c) 2014 Mustafa Ibrahim. All rights reserved.
//

#import "ViewController.h"
#import "MIBadgeButton.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    
    self.navigationItem.title = @"MIBadgeButton";
    
    [self.view setBackgroundColor:[UIColor whiteColor]];
    
    MIBadgeButton *btn1 = [MIBadgeButton buttonWithType:UIButtonTypeCustom];
    [btn1 setFrame:CGRectMake(100, 150, 64, 30)];
    [btn1 setTitle:@"test" forState:UIControlStateNormal];
    [btn1 setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
    // optional to change the default position of the badge
    [btn1 setBadgeEdgeInsets:UIEdgeInsetsMake(12, 0, 0, 12)];
    [btn1 setBadgeString:@"244"];
    [self.view addSubview:btn1];
    
    MIBadgeButton *btn2 = [MIBadgeButton buttonWithType:UIButtonTypeRoundedRect];
    [btn2 setFrame:CGRectMake(100, 250, 64, 64)];
    [btn2 setImage:[UIImage imageNamed:@"1"] forState:UIControlStateNormal];
    [btn2 setBadgeString:@"21"];
    [self.view addSubview:btn2];
}


@end
