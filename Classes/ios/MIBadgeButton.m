//
//  MIBadgeButton.m
//  Elmenus
//
//  Created by Mustafa Ibrahim on 2/1/14.
//  Copyright (c) 2014 Mustafa Ibrahim. All rights reserved.
//

#define IS_OS_7_OR_LATER    ([[[UIDevice currentDevice] systemVersion] floatValue] >= 7.0)

#import "MIBadgeButton.h"
#import "MIBadgeLabel.h"
#import <QuartzCore/QuartzCore.h>

@interface MIBadgeButton() {
    UITextView *calculationTextView;
    UILabel *badgeLabel;
}

@end

@implementation MIBadgeButton

+(id)buttonWithType:(UIButtonType)t {
    return [[MIBadgeButton alloc] init];
}

#pragma mark - Setters

- (void) setBadgeString:(NSString *)badgeString
{
    _badgeString = badgeString;
    [self setupBadgeViewWithString:badgeString];
}
- (void)setBadgeEdgeInsets:(UIEdgeInsets)badgeEdgeInsets
{
    _badgeEdgeInsets = badgeEdgeInsets;
    [self setupBadgeViewWithString:_badgeString];
}

-(void)setBadgeTextColor:(UIColor *)badgeTextColor {
    self->_badgeTextColor = badgeTextColor;
    [self setupBadgeStyle];
}

-(void)setBadgeBackgroundColor:(UIColor *)color {
    self->_badgeBackgroundColor = color;
    [self setupBadgeStyle];
}

#pragma mark - Initializers

- (id) init
{
    if(self == [super init]) {
        [self setupBadgeViewWithString:nil];
    }
    return self;
}

- (id) initWithCoder:(NSCoder *)aDecoder
{
    if(self == [super initWithCoder:aDecoder]) {
        [self setupBadgeViewWithString:nil];
    }
    return self;
}

- (id) initWithFrame:(CGRect) frame withBadgeString:(NSString *)string
{
    if (self == [super initWithFrame:frame]) {
        [self setupBadgeViewWithString:string];
    }
    return self;
}

- (id) initWithFrame:(CGRect) frame withBadgeString:(NSString *)string badgeInsets:(UIEdgeInsets)badgeInsets
{
    if (self == [super initWithFrame:frame]) {
        self.badgeEdgeInsets = badgeInsets;
        [self setupBadgeViewWithString:string];
        self.badgeTextColor = [UIColor whiteColor];
        self.badgeBackgroundColor = [UIColor redColor];
    }
    return self;
}

- (void) setupBadgeViewWithString:(NSString *)string
{
    if(!badgeLabel) {
        if(IS_OS_7_OR_LATER)
            badgeLabel = [[UILabel alloc] init];
        else
            badgeLabel = [[MIBadgeLabel alloc] init];
    }
    [badgeLabel setClipsToBounds:YES];
    [badgeLabel setText:string];
    self.badgeTextColor = [UIColor whiteColor];
    [badgeLabel setFont:[UIFont systemFontOfSize:13]];
    CGSize badgeSize = [badgeLabel sizeThatFits:CGSizeMake(320, FLT_MAX)];
    badgeSize.width = badgeSize.width < 20 ? 25 : badgeSize.width + 5;

    int vertical = self.badgeEdgeInsets.top - self.badgeEdgeInsets.bottom;
    int horizontal = self.badgeEdgeInsets.left - self.badgeEdgeInsets.right;
    
    [badgeLabel setFrame:CGRectMake(self.bounds.size.width - 10 + horizontal, -(badgeSize.height / 2) - 10 + vertical, badgeSize.width,  badgeSize.width > 25 ? badgeSize.height : badgeSize.width)];
    [self setupBadgeStyle];
    [self addSubview:badgeLabel];
    
    badgeLabel.hidden = string ? NO : YES;
    
    if (self.hideWhenZero) {
        badgeLabel.hidden = [string isEqualToString:@"0"] ? YES : NO;
    }
}

- (void) setupBadgeStyle
{
    [badgeLabel setTextAlignment:NSTextAlignmentCenter];
    [badgeLabel setBackgroundColor:self.badgeBackgroundColor];
    [badgeLabel setTextColor:self.badgeTextColor];
    badgeLabel.layer.cornerRadius = badgeLabel.bounds.size.width > 25 ? 8 : badgeLabel.bounds.size.width / 2;
}

@end
