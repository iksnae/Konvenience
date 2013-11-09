//
//  ViewController.m
//  Konvenience_Demo
//
//  Created by Khalid on 11/8/13.
//  Copyright (c) 2013 iksnae. All rights reserved.
//

#import "ViewController.h"
#import "UIView+Konvenience.h"

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
    
    [view1 setBackgroundColor:[UIColor yellowColor]];
    [view2 setBackgroundColor:[UIColor cyanColor]];
    [view3 setBackgroundColor:[UIColor greenColor]];
    
    
    
    [view1 setBorderColor:[UIColor redColor] andBorderWidth:30];
    
    [view2 setBorderColor:[UIColor greenColor]];
    [view2 setBorderWidth:10];
    
    [view3 setBorderColor:[UIColor blueColor]];
    [view3 setBorderWidth:15];
    
    [self.view addSubview:view1];
    [self.view addSubview:view2];
    [self.view addSubview:view3];
    
   
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
