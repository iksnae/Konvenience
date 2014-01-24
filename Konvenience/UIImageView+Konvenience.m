//
//  UIImageView+Konvenience.m
//  anim
//
//  Created by Khalid on 1/23/14.
//
//

#import "UIImageView+Konvenience.h"

@implementation UIImageView (Konvenience)

- (void)animateWithImages:(NSArray *)animationImages duration:(NSTimeInterval)duration loopAnimation:(BOOL)loop andCallback:(AnimationCompletionHandler)completionCallback
{
    [self setAnimationImages:animationImages];
    [self setAnimationDuration:duration];
    [self setAnimationRepeatCount:loop?0:1];
    [self startAnimating];
    
    if (completionCallback==nil || loop) return;
    
    __block UIImageView * blockSelf = self;
    dispatch_time_t popTime = dispatch_time(DISPATCH_TIME_NOW, self.animationDuration * NSEC_PER_SEC);
    dispatch_after(popTime, dispatch_get_main_queue(), ^(void){
        completionCallback(blockSelf);
    });
}

- (void)animateWithBaseImageName:(NSString *)baseImageName totalImages:(NSInteger)totalImages duration:(NSTimeInterval)duration loopAnimation:(BOOL)loop andCallback:(AnimationCompletionHandler)completionCallback
{
    NSMutableArray * frames = [NSMutableArray arrayWithCapacity:24];
    
    for (int i=1; i<25; i++) {
        NSString * imageName = [NSString stringWithFormat:@"%@%04d",baseImageName,i];
        [frames addObject:[UIImage imageNamed:imageName]];
    }
    
    [self animateWithImages:frames duration:duration loopAnimation:loop andCallback:completionCallback];
}

@end
