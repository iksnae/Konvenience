//
//  UIImageView+Konvenience.h
//  anim
//
//  Created by Khalid on 1/23/14.
//
//

#import <UIKit/UIKit.h>
typedef void (^AnimationCompletionHandler)(UIImageView * imageView);
@interface UIImageView (Konvenience)
- (void)animateWithImages:(NSArray *)animationImages duration:(NSTimeInterval)duration loopAnimation:(BOOL)loop andCallback:(AnimationCompletionHandler)completionCallback;
- (void)animateWithBaseImageName:(NSString *)baseImageName totalImages:(NSInteger)totalImages duration:(NSTimeInterval)duration loopAnimation:(BOOL)loop andCallback:(AnimationCompletionHandler)completionCallback;
@end
