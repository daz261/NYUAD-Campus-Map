//
//  InformationViewController.h
//NYUAD Campus
//
//  Created by Daria Zahaleanu on 3/11/18.
//  Copyright © 2018 Daria Zahaleanu. All rights reserved.

#import <MessageUI/MessageUI.h>
#import <UIKit/UIKit.h>
#import "Building.h"

//defining the controller that controlls the buttons at the bottom of the screen
@interface InformationViewController : UIViewController <MFMailComposeViewControllerDelegate>
//defining the list of building that will show up on the information view controller
@property (nonatomic) Building *building;
//defining the image view for the information view controller
@property (weak, nonatomic) IBOutlet UIImageView *imageView;
//defining the name label (eg. Arts Center, Library Cafe) for the information view controller
@property (weak, nonatomic) IBOutlet UILabel *nameLabel;
//instance method for the back button
- (IBAction)backButton:(id)sender;
//defining the table view
@property (weak, nonatomic) IBOutlet UITableView *informationTableView;


@end


//IBOutlet = Type qualifier used by Interface Builder to expose a symbol as a connection point for
//           sending messages from app code to a user interface element.
