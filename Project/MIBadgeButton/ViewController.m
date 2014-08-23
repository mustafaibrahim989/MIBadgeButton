//
//  ViewController.m
//  MIBadgeButton
//
//  Created by Mustafa Ibrahim on 2/3/14.
//  Copyright (c) 2014 Mustafa Ibrahim. All rights reserved.
//

#import "ViewController.h"
#import "MIBadgeButton.h"
#import "CustomCell.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    
    self.navigationItem.title = @"MIBadgeButton";
    
    [self.view setBackgroundColor:[UIColor whiteColor]];
}

- (void) configureButton:(MIBadgeButton *) button withBadge:(NSString *) badgeString {
    [button setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
    // optional to change the default position of the badge
    [button setBadgeEdgeInsets:UIEdgeInsetsMake(8, 5, 0, 8)];
    [button setBadgeString:badgeString];
}

- (void) configureCell:(CustomCell *) cell AtIndexPath:(NSIndexPath *)indexPath {
    [cell.cellLabel setText:[NSString stringWithFormat:@"Row %i", indexPath.row]];
    [self configureButton:cell.facebookButton withBadge:@"120"];
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return 5;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    CustomCell *cell = [tableView dequeueReusableCellWithIdentifier:@"Cell" forIndexPath:indexPath];
    
    [self configureCell:cell AtIndexPath:indexPath];
    
    return cell;
}


- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    return 1;
}


@end
