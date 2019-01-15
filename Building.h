//
//  Building.h
//  NYUAD Campus
//
//  Created by Daria Zahaleanu on 3/11/18.
//  Copyright © 2018 Daria Zahaleanu. All rights reserved.

#import <Foundation/Foundation.h>
#import "Employee.h"
#import <UIKit/UIKit.h>

//defining Building as a NSObject
@interface Building : NSObject
// listing the attributes (OBJECTS) of the NSObject: name, location, description, history, image, imageKey, departments, employees in building
@property NSString *name;
@property int *location;
@property NSString *description;
@property NSString *history;
@property UIImage *image;
@property NSString *imageKey;
@property NSArray *departments;
@property NSMutableArray *employeesInBuilding;

//Initialization is the stage of object creation that makes a newly allocated object usable by setting its state to reasonable initial values. Initialization should always occur right after allocation. It is performed by an initializer method (or simply, an initializer), which you always invoke on a newly allocated object. Initializers can also perform other setup tasks that bring the object into a useful state, such as loading resources and allocating heap memory.
//All the objects are initialized as NSStrings, except the image and the the employeesInBuilding, that are arrays.

- (id)initWithName:(NSString *)n location:(int *)loc description:(NSString *)des history:(NSString *)h image:(UIImage *)im employeesInBuilding:(NSMutableArray *)em;




@end
