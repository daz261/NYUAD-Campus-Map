//
//  EmployeeInformationViewController.m
//  NYUAD Campus
//
//  Created by Daria Zahaleanu on 3/11/18.
//  Copyright © 2018 Daria Zahaleanu. All rights reserved.
//


/***************************************************************************
**************************** TO BE FURTHER DEVELOPED AND IMPLEMENTED ****************************
***************************************************************************/

#import "EmployeeInformationViewController.h"

@interface EmployeeInformationViewController ()

@end

@implementation EmployeeInformationViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        
        
        
        UIColor *newCellColor = [UIColor colorWithRed:254.0/255 green:255.0/255 blue:192.0/255 alpha:1];
        
        UIColor *newBackgroundColor = [UIColor colorWithRed:46.0/255 green:81.0/255 blue:47.0/255 alpha:1];
        
        NSShadow *shadow = [NSShadow new];
        shadow.shadowColor = newCellColor;
        
        [[UINavigationBar appearance] setTitleTextAttributes: @{
                                                                NSForegroundColorAttributeName: newBackgroundColor,
                                                                NSFontAttributeName: [UIFont fontWithName:@"Kohinoor Devanagari" size:20.0f],
                                                                NSShadowAttributeName: shadow
                                                                }];
        
        [UITabBarItem.appearance setTitleTextAttributes:@{
                                                          NSForegroundColorAttributeName : newCellColor } forState:UIControlStateNormal];
        
        [UITabBarItem.appearance setTitleTextAttributes:@{
                                                          NSForegroundColorAttributeName :newBackgroundColor } forState:UIControlStateSelected];
        
        
    }
    return self;
}


- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)backButton:(id)sender
{
    UIViewController *vc = [self presentingViewController];
    
    [vc dismissViewControllerAnimated:YES completion:Nil];
}
-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    UITableViewCell *cell = [[UITableViewCell alloc]initWithStyle:UITableViewCellStyleDefault reuseIdentifier:@"UITableViewCell"];
    UIColor *newCellColor = [UIColor colorWithRed:254.0/255 green:255.0/255 blue:192.0/255 alpha:1];
    
    UIColor *newBackgroundColor = [UIColor colorWithRed:46.0/255 green:81.0/255 blue:47.0/255 alpha:1];
    
    [[cell textLabel]setTextColor:newBackgroundColor];
    [cell setBackgroundColor:newCellColor];
    [[cell textLabel]setLineBreakMode:NSLineBreakByWordWrapping];
    [[cell textLabel]setNumberOfLines:0];
    
    UIFont *newFont = [UIFont fontWithName:@"Kohinoor Devanagari" size:20.0f];
    UIFont *otherFont = [UIFont fontWithName:@"Kohinoor Devanagari" size:14.0f];
    
    
    [[cell textLabel]setFont:newFont];
    [[cell textLabel]setTextColor:newBackgroundColor];
    
    if (UI_USER_INTERFACE_IDIOM() == UIUserInterfaceIdiomPad)
    {
        [[cell textLabel]setFont:newFont];
    }else{
        [[cell textLabel]setFont:otherFont];
    }
    return cell;
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
