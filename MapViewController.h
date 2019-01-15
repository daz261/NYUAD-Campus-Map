//
//  MapViewController.h
//  NYUAD Campus
//
//  Created by Daria Zahaleanu on 3/11/18.
//  Copyright © 2018 Daria Zahaleanu. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <MapKit/MapKit.h>
#import "Annotation.h"
#import <CoreLocation/CoreLocation.h>

#define IF_IOS8 ([[[UIDevice currentDevice]systemVersion]floatValue]>=8.0)

@interface MapViewController : UIViewController <MKMapViewDelegate, CLLocationManagerDelegate>


@property (weak, nonatomic) IBOutlet MKMapView *mapView;

@property double heading;
@property CLLocationManager *locationManager;
@property IBOutlet UIActivityIndicatorView *activityIndicator;





@end
