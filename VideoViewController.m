//
//  VideoViewController.m
// NYUAD Campus
//
//  Created by Daria Zahaleanu on 3/11/18.
//  Copyright © 2018 Daria Zahaleanu. All rights reserved.
//

#import "VideoViewController.h"


@interface VideoViewController ()

@end
////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
@implementation VideoViewController
//instance method that returns a view controller object initialized to the nib file in the specified bundle
//in other words, it links the view controller to the .xib file
- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
    //setting the name of the bar button
    UITabBarItem *tbi = [self tabBarItem];
    [tbi setTitle:@"NYUAD"];
    //assigning a picture to it
    UIImage *image = [UIImage imageNamed: @"Bookmarks.png"];
    [tbi setImage:image];
    UINavigationItem *nav = [self navigationItem];
   // [nav setTitle:@"Shorecrest History"];
    [nav setTitle:@"NYUAD"];
    //setting a default black background
        [[self view]setBackgroundColor:[UIColor blackColor]];
    }
    return self;
}
////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
-(void)viewDidAppear:(BOOL)animated
{
    //playing the video
    NSString *filepath = [[NSBundle mainBundle] pathForResource:@"NYUAD" ofType:@"m4v"];
    NSURL *fileURL    =   [NSURL fileURLWithPath:filepath];
    
    MPMoviePlayerController *movie = [[MPMoviePlayerController alloc]initWithContentURL:fileURL];
    movie.controlStyle = MPMovieControlStyleFullscreen;
    [movie setMovieSourceType:MPMovieSourceTypeFile];
    //setting the user interface for an iPad
    if (UI_USER_INTERFACE_IDIOM() == UIUserInterfaceIdiomPad)
    {
        CGRect rect = CGRectMake(0,0, self.view.bounds.size.width, 980);
        [movie.view setFrame:rect];
        [self.view addSubview:movie.view];
    //setting the user interface for an iPhone
    }else if (UI_USER_INTERFACE_IDIOM() == UIUserInterfaceIdiomPhone)
    {
        CGRect rect = CGRectMake(0,0, self.view.bounds.size.width, 550);
        [movie.view setFrame:rect];
        [self.view addSubview:movie.view];
    }
    
    [movie prepareToPlay];
    //----------------------------------
    
    movie.scalingMode = MPMovieScalingModeAspectFit;
    self.myMovieController = movie;
    
    

//    
//    self.myMovieController = moviePlayer;
//    [self.view addSubview: self.myMovieController.view];
//    
//    [[NSNotificationCenter defaultCenter] addObserver:self
//                                             selector:@selector(playMediaFinished:)
//                                                 name:MPMoviePlayerPlaybackDidFinishNotification
//                                               object:moviePlayer];
//    [self.myMovieController play];
    
    
//----------------------------------------------------------------------------------
    
    //UIWindow *backgroundWindow = [[UIApplication sharedApplication] keyWindow];
    //[movie.view setFrame:backgroundWindow.frame];
    //[backgroundWindow addSubview:movie.view];
    
    [self.myMovieController play];

}
////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
- (void)viewDidLoad
{
    
    [super viewDidLoad];
    
    
//    player.frame = CGRectMake(0, 0, 1024, 768);
//    [self.view addSubview:player.view];
//    player.fullscreen = NO;
//    [player play];
    
    
}
////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
