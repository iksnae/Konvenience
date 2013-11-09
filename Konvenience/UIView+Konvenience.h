//
//  UIView+Konvenience.h
//  Konvenience
//
//  Created by Khalid on 11/8/13.
//  Copyright (c) 2013 iksnae. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIView (Konvenience)

// Border Konvenience Methods
- (void)setBorderColor:(UIColor *)borderColor andBorderWidth:(CGFloat)borderWidth;
- (void)setBorderColor:(UIColor *)borderColor;
- (void)setBorderWidth:(CGFloat)borderWidth;
- (void)resetBorders;

@end