//
//  CustomCell.h
//  MIBadgeButton
//
//  Created by Mustafa Ibrahim on 8/24/14.
//  Copyright (c) 2014 Mustafa Ibrahim. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "MIBadgeButton.h"

@interface CustomCell : UITableViewCell

@property (retain, nonatomic) IBOutlet MIBadgeButton *facebookButton;
@property (retain, nonatomic) IBOutlet UILabel *cellLabel;
@end
