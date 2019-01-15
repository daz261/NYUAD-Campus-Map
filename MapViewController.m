//
//  MapViewController.m
// NYUAD Campus
//
//  Created by Daria Zahaleanu on 3/11/18.
//  Copyright © 2018 Daria Zahaleanu. All rights reserved.

#import "MapViewController.h"
#import "Annotation.h"
#import "InformationViewController.h"
#import "BuildingStore.h"
#import "Building.h"

@interface MapViewController ()

@end
//DEFINING THE LATITUDE AND LONGITUDE OF DIFFERENT PLACES ON CAMPUS
#define CAMPUS_LATITUDE 24.524285;
#define CAMPUS_LONGITUDE 54.434631;

#define CAMPUSCENTER_LATITUDE 24.524285;
#define CAMPUSCENTER_LONGITUDE 54.434631;

#define ARTSCENTER_LATITUDE 24.523495;
#define ARTSCENTER_LONGITUDE 54.436026;

#define TORCHCLUB_LATITUDE 24.522802;
#define TORCHCLUB_LONGITUDE 54.435993;

#define PHARMACY_LATITUDE 24.522753;
#define PHARMACY_LONGITUDE 54.434631;

#define NYUADINSTITUTE_LATITUDE 24.523114;
#define NYUADINSTITUTE_LONGITUDE 54.434159;

#define WELCOMECENTER_LATITUDE 24.523602;
#define WELCOMECENTER_LONGITUDE 54.433612;

#define WESTPARKING_LATITUDE 24.5249;
#define WESTPARKING_LONGITUDE 54.432324;

#define SUSHICOUNTER_LATITUDE 24.525281;
#define SUSHICOUNTER_LONGITUDE 54.431949;

#define WESTDH_LATITUDE 24.525554;
#define WESTDH_LONGITUDE 54.432592;

#define LIBRARYCAFE_LATITUDE 24.5249;
#define LIBRARYCAFE_LONGITUDE 54.434373;

#define THE_SPANIPHONE 0.004F;
#define THE_SPANIPAD 0.002F;
//IMPLEMENTING THE MAP VIEW CONTROLLER
@implementation MapViewController

@synthesize mapView, heading;

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
        
//        UIColor *newCellColor = [UIColor colorWithRed:254.0/255 green:255.0/255 blue:192.0/255 alpha:1];
//        
////        UIImage *tabBarBackground = [UIImage imageNamed:@"AnimationImage.png"];
////        [[UITabBar appearance]setBackgroundImage:tabBarBackground];
//        
//        
//        UIColor *newBackgroundColor = [UIColor colorWithRed:46.0/255 green:81.0/255 blue:47.0/255 alpha:1];
//        
//        NSShadow *shadow = [NSShadow new];
//        shadow.shadowColor = newCellColor;
//        
//        [[UINavigationBar appearance] setTitleTextAttributes: @{
//                                                                NSForegroundColorAttributeName: newCellColor,
//                                                                NSFontAttributeName: [UIFont fontWithName:@"Kohinoor Devanagari" size:20.0f],
//                                                                NSShadowAttributeName: shadow
//                                                                }];
//        
       //SETTING THE TAB BAR BUTTONS: for the Map and the Buildings
        UITabBarItem *tbi = [self tabBarItem];
        [tbi setTitle:@"Map"];
        
        
        UIImage *image = [UIImage imageNamed: @"World_Times.png"];
        [tbi setImage:image];
        

        UINavigationItem *nav = [self navigationItem];
        
        [nav setTitle:@"NYUAD Campus Map"];
//        
//        [UITabBarItem.appearance setTitleTextAttributes:@{
//                                                          NSForegroundColorAttributeName : newCellColor } forState:UIControlStateNormal];
        
        
        
        
        
//        [UITabBarItem.appearance setTitleTextAttributes:@{
//                                                          NSForegroundColorAttributeName :newCellColor } forState:UIControlStateSelected];
        
        
        
        heading = 90;
        
        _locationManager = [[CLLocationManager alloc] init];
        [_locationManager setDelegate:self];
        [_locationManager setDesiredAccuracy:kCLLocationAccuracyBest];
        
        [[self mapView] setDelegate:self];
        
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
    
    //[mapView setDelegate:self];
    
    [self.navigationController.navigationBar setTranslucent:NO];
    [mapView setMapType:MKMapTypeHybrid];
    
    MKCoordinateRegion myRegion;
    
    CLLocationCoordinate2D center;
    center.latitude = CAMPUS_LATITUDE;
    center.longitude = CAMPUS_LONGITUDE;
    
    if (UI_USER_INTERFACE_IDIOM() == UIUserInterfaceIdiomPad)
    {
        MKCoordinateSpan span;
        span.latitudeDelta = THE_SPANIPAD;
        span.longitudeDelta = THE_SPANIPAD;
        myRegion.center = center;
        myRegion.span = span;
        
    }
    else {
        MKCoordinateSpan span;
        span.latitudeDelta = THE_SPANIPHONE;
        span.longitudeDelta = THE_SPANIPHONE;
        myRegion.center = center;
        myRegion.span = span;
    }
    
    mapView.delegate = self;
    _locationManager.delegate = self;
    self.locationManager = [[CLLocationManager alloc]init];
    
    if (IF_IOS8) {
        [self.locationManager requestWhenInUseAuthorization];
        [self.locationManager requestAlwaysAuthorization];
    }
    
//    [_locationManager startUpdatingLocation];
    //ADDING THE ANNOTATIONS FOR THE BUILDINGGS
    mapView.showsUserLocation = YES;
    
    [mapView setRegion:myRegion animated:YES];
    
    NSMutableArray *locations = [[NSMutableArray alloc]init];
    CLLocationCoordinate2D location;
    
    Annotation *myAnn = [[Annotation alloc] init];
    location.latitude = CAMPUSCENTER_LATITUDE;
    location.longitude = CAMPUSCENTER_LONGITUDE;
    
    [myAnn setTitle:@"Campus Center"];
    [myAnn setCoordinate:location];
    
    [locations addObject:myAnn];
    
    myAnn = [[Annotation alloc] init];
    location.latitude = ARTSCENTER_LATITUDE;
    location.longitude = ARTSCENTER_LONGITUDE;
    
    [myAnn setTitle:@"Arts Center"];
    [myAnn setCoordinate:location];
    
    [locations addObject:myAnn];
    
    myAnn = [[Annotation alloc] init];
    location.latitude = TORCHCLUB_LATITUDE;
    location.longitude = TORCHCLUB_LONGITUDE;
    
    [myAnn setTitle:@"Torch Club"];
    [myAnn setCoordinate:location];
    
    [locations addObject:myAnn];
    
    myAnn = [[Annotation alloc] init];
    location.latitude = PHARMACY_LATITUDE;
    location.longitude = PHARMACY_LONGITUDE;
    
    [myAnn setTitle:@"Pharmacy"];
    [myAnn setCoordinate:location];
    
    [locations addObject:myAnn];
    
    myAnn = [[Annotation alloc] init];
    location.latitude = NYUADINSTITUTE_LATITUDE;
    location.longitude = NYUADINSTITUTE_LONGITUDE;
    
    [myAnn setTitle:@"NYUAD Institute"];
    [myAnn setCoordinate:location];
    
//    [locations addObject:myAnn];
//
//    myAnn = [[Annotation alloc] init];
//    location.latitude = MSSHERCENTER_LATITUDE;
//    location.longitude = MSSHERCENTER_LONGITUDE;
//
//    [myAnn setTitle:@"MS Sher Center"];
//    [myAnn setCoordinate:location];
//
    [locations addObject:myAnn];
    
    myAnn = [[Annotation alloc] init];
    location.latitude = WELCOMECENTER_LATITUDE;
    location.longitude = WELCOMECENTER_LONGITUDE;
    
    [myAnn setTitle:@"Welcome Center"];
    [myAnn setCoordinate:location];
    
    [locations addObject:myAnn];
    
    myAnn = [[Annotation alloc] init];
    location.latitude = WESTPARKING_LATITUDE;
    location.longitude = WESTPARKING_LONGITUDE;
    
    [myAnn setTitle:@"West Parking"];
    [myAnn setCoordinate:location];
    
    [locations addObject:myAnn];
    
    myAnn = [[Annotation alloc] init];
    location.latitude = SUSHICOUNTER_LATITUDE;
    location.longitude = SUSHICOUNTER_LONGITUDE;
    
    [myAnn setTitle:@"Sushi Counter"];
    [myAnn setCoordinate:location];
    
    [locations addObject:myAnn];
    
    myAnn = [[Annotation alloc] init];
    location.latitude = WESTDH_LATITUDE;
    location.longitude = WESTDH_LONGITUDE;
    
    [myAnn setTitle:@"West Dining Hall"];
    [myAnn setCoordinate:location];
    
    [locations addObject:myAnn];
    
    myAnn = [[Annotation alloc] init];
    location.latitude = LIBRARYCAFE_LATITUDE;
    location.longitude = LIBRARYCAFE_LONGITUDE;
    
    [myAnn setTitle:@"Library Cafe"];
    [myAnn setCoordinate:location];
    
    [locations addObject:myAnn];
    /////////////////////////////////////////////////////////////////////////
    //SET THE MAP
    [[self mapView] addAnnotations:locations];
    
}
////////////////////////////////////////////////////////////////////////////////////////
-(void)viewWillAppear:(BOOL)animated
{
    MKMapCamera *camera = [[mapView camera]copy];
    [camera setHeading:heading];
    [mapView setCamera:camera animated:YES];
}
////////////////////////////////////////////////////////////////////////////////////////
-(void)viewWillDisappear:(BOOL)animated
{
    heading = [[mapView camera]heading];
}
////////////////////////////////////////////////////////////////////////////////////////
- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
////////////////////////////////////////////////////////////////////////////////////////
-(MKAnnotationView *)mapView:(MKMapView *)sender viewForAnnotation:(id<MKAnnotation>)annotation
{
    if ([annotation isKindOfClass:[MKUserLocation class]])
        return nil;
    //UIColor *newBackgroundColor = [UIColor colorWithRed:46.0/255 green:81.0/255 blue:47.0/255 alpha:1];
    static NSString *reuseId = @"StandardPin";

    MKPinAnnotationView *aView = (MKPinAnnotationView *)[sender dequeueReusableAnnotationViewWithIdentifier:reuseId];
    
    if (aView == nil)
    {
        aView = [[MKPinAnnotationView alloc] initWithAnnotation:annotation reuseIdentifier:reuseId];
        
        UIImage *image = [UIImage imageNamed:@"home-7.png"];
        UIImageView *imageView = [[UIImageView alloc] initWithImage:image];
        
//        UILabel *labelView = ((UILabel *)aView);
//        labelView.textColor = newBackgroundColor;
        
        aView.rightCalloutAccessoryView = [UIButton buttonWithType:UIButtonTypeDetailDisclosure];
        [aView.rightCalloutAccessoryView setTag:1];
        
        aView.leftCalloutAccessoryView = imageView;
        aView.pinColor = MKPinAnnotationColorPurple;
        aView.canShowCallout = YES;
    }
    aView.annotation = annotation;
    
    return aView;
}
///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
-(void)mapView:(MKMapView *)mapView annotationView:(MKAnnotationView *)view calloutAccessoryControlTapped:(UIControl *)control
{
    if ([control tag] == 1)
    {
        NSArray *array = [[BuildingStore sharedStore]allBuildings];
        
        InformationViewController *ivc = [[InformationViewController alloc]init];
        
        for (int i = 0; i < [[[BuildingStore sharedStore]allBuildings]count] ;i++)
        {
            if (view.annotation.title == [[array objectAtIndex:i]name])
            {
                [ivc setBuilding:[array objectAtIndex:i]];
                
            }
        }
        
        if (UI_USER_INTERFACE_IDIOM() == UIUserInterfaceIdiomPad) {
            ivc.modalPresentationStyle = UIModalPresentationFormSheet;
            ivc.modalTransitionStyle = UIModalTransitionStyleCoverVertical;
            [self presentViewController:ivc animated:YES completion:NULL];

        }else if (UI_USER_INTERFACE_IDIOM() == UIUserInterfaceIdiomPhone)
        {
            [[self navigationController]pushViewController:ivc animated:YES];
        }

    }
}
///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
-(void)locationManager:(CLLocationManager *)manager didUpdateLocations:(NSArray *)locations
{
    CLLocation *newLocation = [locations lastObject];
    NSLog(@"%@", newLocation);
    
    NSTimeInterval t = [[newLocation timestamp] timeIntervalSinceNow];
    
    if (t < -180) {
        return;
    }
    
//    [self foundLocation:newLocation];
}
///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
-(void)foundLocation:(CLLocation *)loc
{
    [_locationManager stopUpdatingLocation];
}

-(void)locationManager:(CLLocationManager *)manager didFailWithError:(NSError *)error
{
    NSLog(@"Could not find location");
}

-(void)mapView:(MKMapView *)mapView didUpdateUserLocation:(MKUserLocation *)userLocation
{
    CLLocationCoordinate2D loc = [userLocation coordinate];
    MKCoordinateRegion region = MKCoordinateRegionMakeWithDistance(loc, 250, 250);
    [mapView setRegion:region animated:YES];
    
}

-(void)findLocation
{
    [_locationManager startUpdatingLocation];
    [_activityIndicator startAnimating];

}


@end
