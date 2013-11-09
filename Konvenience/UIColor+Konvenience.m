//
//  UIColor+Konvenience.m
//  Konvenience_Demo
//
//  Created by Khalid on 11/8/13.
//  Copyright (c) 2013 iksnae. All rights reserved.
//

#import "UIColor+Konvenience.h"

#define ARC4RANDOM_MAX      0x100000000

@implementation UIColor (Konvenience)

+(id)randomColorAndOpacity
{
    CGFloat opacity = ((double)arc4random() / ARC4RANDOM_MAX);;
    return [UIColor randomColorWithOpacity:opacity];
}

+(id)randomColorOpaque
{
    return [UIColor randomColorWithOpacity:1];
}

+(id)randomColorWithOpacity:(CGFloat)opacity
{
    CGFloat hue = ( arc4random() % 256 / 256.0 );
    CGFloat saturation = ( arc4random() % 128 / 256.0 ) + 0.5;
    CGFloat brightness = ( arc4random() % 128 / 256.0 ) + 0.5;
    return [UIColor colorWithHue:hue saturation:saturation brightness:brightness alpha:opacity];
}

@end
