//
//  ViewController.m
//  Konvenience_Demo
//
//  Created by Khalid on 11/8/13.
//  Copyright (c) 2013 iksnae. All rights reserved.
//

#import "ViewController.h"
#import "UIView+Konvenience.h"
#import "UIColor+Konvenience.h"
#import "UIImageView+Konvenience.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    
    UIView * view1 = [[UIView alloc]initWithFrame:CGRectMake(20, 20, 80, 80)];
    UIView * view2 = [[UIView alloc]initWithFrame:CGRectMake(150, 20, 130, 130)];
    UIView * view3 = [[UIView alloc]initWithFrame:CGRectMake(20, 180, 280, 280)];
    
    [view1 setBackgroundColor:[UIColor randomColorOpaque]];
    [view2 setBackgroundColor:[UIColor randomColorAndOpacity]];
    [view3 setBackgroundColor:[UIColor randomColorWithOpacity:0.5]];
    
    
    
    [view1 setBorderColor:[UIColor randomColorOpaque] andBorderWidth:30];
    
    [view2 setBorderColor:[UIColor randomColorAndOpacity]];
    [view2 setBorderWidth:10];
    
    [view3 setBorderColor:[UIColor randomColorOpaque]];
    [view3 setBorderWidth:15];
    
    [self.view addSubview:view1];
    [self.view addSubview:view2];
    [self.view addSubview:view3];
    
    UIImageView * img = [[UIImageView alloc]initWithImage:[UIImage imageNamed:@"startFrame"]];
    
    
    // intro animation ( uses introFrames0001.png - introFrames0024.png )
    [img animateWithBaseImageName:@"introFrames" totalImages:24 duration:1 loopAnimation:NO andCallback:^(UIImageView *imageView) {
        // loop animation ( uses loopFrames0001.png - loopFrames0024.png )
        [imageView animateWithBaseImageName:@"loopFrames" totalImages:24 duration:1 loopAnimation:YES andCallback:^(UIImageView *imageView) {
            // now looping!
        }];
    }];
    
   
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
