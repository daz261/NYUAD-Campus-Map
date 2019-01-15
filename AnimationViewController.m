//
//  AnimationViewController.m
//  NYUAD Campus
//
//  Created by Daria Zahaleanu on 3/11/18.
//  Copyright © 2018 Daria Zahaleanu. All rights reserved.

#import "AnimationViewController.h"
#import "AppDelegate.h"
#import "MapViewController.h"
#import "TableViewController.h"
#import "VideoViewController.h"

//setting the interface
@interface AnimationViewController ()

@end

//@implementation section contains the actual code for the methods you declared in the @interface section.
@implementation AnimationViewController
//@synthesize creates a getter and a setter for the variable.
@synthesize animationImage;
/////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
// this function is called after the controller's view is loaded into memory
- (void)viewDidLoad {
    //it is a good practice to call super viewDidLoad, although not necessary; it simply sets the things up after the class is called
    [super viewDidLoad];
    //setting the background color
    UIColor *newBackgroundColor = [UIColor colorWithRed:81.0/255 green:10.0/255 blue:81.0/255 alpha:1];
    //calling the object to show up
    [[self view]setBackgroundColor:newBackgroundColor];
    
}
/////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
- (void)viewDidAppear:(BOOL)animated
{
    //An object that provides basic, single-keyframe animation capabilities for a layer property.
    //keyPath is an inherited method that animates opacity
    CABasicAnimation *imageFade = [CABasicAnimation animationWithKeyPath:@"opacity"];
    //listing the attributes of the animation
    [imageFade setDelegate:self];
    //Defines the value the receiver uses to start interpolation.
    [imageFade setFromValue:[NSNumber numberWithFloat:0.0]];
    //Defines the value the receiver uses to end interpolation.
    [imageFade setToValue:[NSNumber numberWithFloat:1.0]];
    //set duration
    [imageFade setDuration:3.0];
    //add a layer that fades the animation away
    [[animationImage layer]addAnimation:imageFade forKey:@"imageFade"];
}
///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//function that initiates the interface of Map, Table and Video view at the bottom of the page once the animation stops
-(void)animationDidStop:(CAAnimation *)anim finished:(BOOL)flag
{
    //set new background colors
    UIColor *newBackgroundColor = [UIColor colorWithRed:81.0/255 green:10.0/255 blue:81.0/255 alpha:1];
    // container view controller that manages a radio-style selection interface between the map, the table and the video at the botton of the iPhone screen
    UITabBarController *tabBar = [[UITabBarController alloc]init];
    [[tabBar view] setTintColor:newBackgroundColor];
    //declaring the map, table and video controllers, by allocating space
    MapViewController *wvc = [[MapViewController alloc]init];
    TableViewController *tvc = [[TableViewController alloc]init];
    VideoViewController *vvc = [[VideoViewController alloc]init];
    //A container view controller that defines a stack-based scheme for navigating hierarchical content. For example, when an item in the table view controller is pressed, it will redirect the user to a new interface. Analogously, when a pin will be pressed the user will be redirected to a tab that will display more information.
    UINavigationController *navController = [[UINavigationController alloc]initWithRootViewController:wvc];
    
    UINavigationController *navController2 = [[UINavigationController alloc]initWithRootViewController:tvc];
    
    
    NSArray *viewControllers = [[NSArray alloc]initWithObjects:navController,navController2, vvc, nil];
    
    [tabBar setViewControllers:viewControllers];
    [self presentViewController:tabBar animated:YES completion:nil];
    
}

@end
