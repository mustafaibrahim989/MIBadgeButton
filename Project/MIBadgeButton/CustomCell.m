//
//  CustomCell.m
//  MIBadgeButton
//
//  Created by Mustafa Ibrahim on 8/24/14.
//  Copyright (c) 2014 Mustafa Ibrahim. All rights reserved.
//

#import "CustomCell.h"

@implementation CustomCell

- (id)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier
{
    self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    if (self) {
        // Initialization code
    }
    return self;
}

- (void)awakeFromNib
{
    // Initialization code
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated
{
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

- (void)dealloc {
    [_facebookButton release];
    [_cellLabel release];
    [super dealloc];
}
@end
