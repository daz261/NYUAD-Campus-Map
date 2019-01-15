//
//  TableViewController.m
// NYUAD Campus
//
//  Created by Daria Zahaleanu on 3/11/18.
//  Copyright © 2018 Daria Zahaleanu. All rights reserved.
//

#import "TableViewController.h"
#import "MapViewController.h"
#import "Building.h"
#import "BuildingStore.h"
#import "AppDelegate.h"
#import "InformationViewController.h"

//interface that implements the view controller for the bottom of the screen
@interface TableViewController ()

@end
//interface that implements the view controller for the bottom of the screen
@implementation TableViewController

- (id)init
{
    self = [super initWithStyle:UITableViewStyleGrouped];

    if (self) {
        // Custom initialization
        
        UIColor *newCellColor = [UIColor colorWithRed:10.0/255 green:10.0/255 blue:192.0/255 alpha:1];
        
       // UIColor *newBackgroundColor = [UIColor colorWithRed:46.0/255 green:81.0/255 blue:47.0/255 alpha:1];
        
        NSShadow *shadow = [NSShadow new];
        shadow.shadowColor = newCellColor;
        [[UINavigationBar appearance] setTitleTextAttributes: @{
                                                                NSForegroundColorAttributeName: newCellColor,
                                                                NSFontAttributeName: [UIFont fontWithName:@"Kohinoor Devanagari" size:20.0f],
                                                                NSShadowAttributeName: shadow
                                                                }];
        UITabBarItem *tbi = [self tabBarItem];
        [tbi setTitle:@"Buildings"];
        UIImage *image = [UIImage imageNamed: @"home-7.png"];
        [tbi setImage:image];
        
        UINavigationItem *nav = [self navigationItem];
        [nav setTitle:@"Buildings"];
        [[UITabBar appearance]setTintColor:newCellColor];
        [[UITabBarItem appearance] setTitleTextAttributes:[NSDictionary dictionaryWithObjectsAndKeys:
                                                           [UIFont fontWithName:@"Kohinoor Devanagari" size:10.0f], NSFontAttributeName, nil]forState:UIControlStateNormal];
    }
    return self;
}
///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
-(id)initWithStyle:(UITableViewStyle)style
{
    return [self init];
}
///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return [[[BuildingStore sharedStore] allBuildings]count];
}
///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    UITableViewCell *cell = [[UITableViewCell alloc]initWithStyle:UITableViewCellStyleDefault reuseIdentifier:@"UITableViewCell"];
    
    Building *building = [[[BuildingStore sharedStore]allBuildings]objectAtIndex:[indexPath row]];
    
    [[cell textLabel]setText:[building name]];

    UIColor *newCellColor = [UIColor colorWithRed:10.0/255 green:10.0/255 blue:192.0/255 alpha:1];
    [cell setBackgroundColor:newCellColor];
    
    UIColor *newBackgroundColor = [UIColor colorWithRed:10.0/255 green:10.0/255 blue:100.0/255 alpha:1];
    
    if (UI_USER_INTERFACE_IDIOM() == UIUserInterfaceIdiomPad)
    {
        [[cell textLabel] setFont:[UIFont fontWithName:@"Kohinoor Devanagari" size:20.0f]];
        
    }else if (UI_USER_INTERFACE_IDIOM() == UIUserInterfaceIdiomPhone)
    {
        [[cell textLabel] setFont:[UIFont fontWithName:@"Kohinoor Devanagari" size:15.0f]];
    }
    
    [[cell textLabel] setHighlightedTextColor:newCellColor];
    [[cell textLabel] setTextColor:newBackgroundColor];
    
    return cell;
}
///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
- (void)viewDidLoad
{
    [super viewDidLoad];
    UIColor *newBackgroundColor = [UIColor colorWithRed:20.0/255 green:0.0/255 blue:20.0/255 alpha:1];
    self.view.backgroundColor = newBackgroundColor;
    // Do any additional setup after loading the view from its nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
-(void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    NSArray *buildings = [[BuildingStore sharedStore]allBuildings];
    Building *building = [buildings objectAtIndex:[indexPath row]];
    
    InformationViewController *ivc = [[InformationViewController alloc]init];
    
    if (UI_USER_INTERFACE_IDIOM() == UIUserInterfaceIdiomPad)
    {
        ivc.modalPresentationStyle = UIModalPresentationFormSheet;
        ivc.modalTransitionStyle = UIModalTransitionStyleCoverVertical;
            [ivc setBuilding:building];
        [self presentViewController:ivc animated:YES completion:NULL];
        
    }else if (UI_USER_INTERFACE_IDIOM() == UIUserInterfaceIdiomPhone)
    {
           [ivc setBuilding:building];
        [[self navigationController]pushViewController:ivc animated:YES];
    }
}
///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
-(void)viewDidAppear:(BOOL)animated
{
    [super viewDidAppear:animated];
    [[self tableView]reloadData];
}



@end
