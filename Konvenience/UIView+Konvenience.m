//
//  UIView+Konvenience.m
//  Konvenience
//
//  Created by Khalid on 11/8/13.
//  Copyright (c) 2013 iksnae. All rights reserved.
//

#import "UIView+Konvenience.h"

@implementation UIView (Konvenience)


- (void)setBorderColor:(UIColor *)borderColor andBorderWidth:(CGFloat)borderWidth
{
    [self.layer setBorderColor:borderColor.CGColor];
    [self.layer setBorderWidth:borderWidth];
}

- (void)setBorderWidth:(CGFloat)borderWidth
{
    [self.layer setBorderWidth:borderWidth];
}

- (void)setBorderColor:(UIColor *)borderColor
{
    [self.layer setBorderColor:borderColor.CGColor];
}

- (void)resetBorders
{
    [self.layer setBorderColor:nil];
    [self.layer setBorderWidth:0];
}

@end