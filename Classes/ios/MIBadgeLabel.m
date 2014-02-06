//
//  MIBadgeLabel.m
//  Elmenus
//
//  Created by Mustafa Ibrahim on 2/3/14.
//  Copyright (c) 2014 Mustafa Ibrahim. All rights reserved.
//

#import "MIBadgeLabel.h"

@implementation MIBadgeLabel

- (id)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        // Initialization code
    }
    return self;
}

// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect
{
    // Drawing code
    
    CGContextRef ctx = UIGraphicsGetCurrentContext();
    UIBezierPath *borderPath = [UIBezierPath bezierPathWithRoundedRect:rect byRoundingCorners:(UIRectCorner)UIRectCornerAllCorners cornerRadii:CGSizeMake(10.0f, 10.0f)];
    CGContextSetFillColorWithColor(ctx, [UIColor whiteColor].CGColor);
    CGContextSaveGState(ctx);
    {
        CGContextAddPath(ctx, borderPath.CGPath);
        
        CGContextSetLineWidth(ctx, 4.0f);
        CGContextSetStrokeColorWithColor(ctx, [UIColor whiteColor].CGColor);
        
        CGContextDrawPath(ctx, kCGPathStroke);
    }
    CGContextRestoreGState(ctx);
    
    CGContextSaveGState(ctx);
    {
        CGContextSetFillColorWithColor(ctx, [UIColor whiteColor].CGColor);
        
        CGRect textFrame = rect;
        const CGSize textSize = [self.text sizeWithFont:[UIFont systemFontOfSize:13.0f]];
    
        
        textFrame.size.height = textSize.height;
        textFrame.origin.y = rect.origin.y + ceilf((rect.size.height - textFrame.size.height) / 2.0f);
        
        [self.text drawInRect:textFrame
                          withFont:[UIFont systemFontOfSize:13.0f]
                     lineBreakMode:NSLineBreakByClipping
                         alignment:NSTextAlignmentCenter];
    }
    CGContextRestoreGState(ctx);
}


@end
