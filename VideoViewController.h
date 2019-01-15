//
//  VideoViewController.h
// NYUAD Campus
//
//  Created by Daria Zahaleanu on 3/11/18.
//  Copyright © 2018 Daria Zahaleanu. All rights reserved.
//

#import <UIKit/UIKit.h>
@import MediaPlayer;
//seting the interface for the video
@interface VideoViewController : UIViewController
//defining the movie controller
@property (nonatomic,strong) MPMoviePlayerController *myMovieController;


@end
