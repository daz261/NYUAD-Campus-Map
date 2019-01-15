//
//  Annotation.h
//  NYUAD Campus
//
//  Created by Daria Zahaleanu on 3/11/18.
//  Copyright © 2018 Daria Zahaleanu. All rights reserved.

#import <Foundation/Foundation.h>
#import <MapKit/MapKit.h>

//class declaration
@interface Annotation : NSObject <MKAnnotation>
// defining three properties of annotations: title, subtitle and coordinates
@property (nonatomic, copy)NSString *title;
@property (nonatomic, copy)NSString *subtitle;
@property (nonatomic, assign)CLLocationCoordinate2D coordinate;


@end
