//
//  Building.m
//  NYUAD Campus
//
//  Created by Daria Zahaleanu on 3/11/18.
//  Copyright © 2018 Daria Zahaleanu. All rights reserved.

#import "Building.h"

@implementation Building
//getter and setter of the following objects
@synthesize name, location, description, history, image, imageKey, employeesInBuilding;
//@synthesize name, location, description, history, image, imageKey;
//initialization
- (id)initWithName:(NSString *)n location:(int *)loc description:(NSString *)des history:(NSString *)h image:(UIImage *)im employeesInBuilding:(NSMutableArray *)em;
{
    self = [super init]; //  equivalent to "self does not equal nil"
    if (self)
    {
        name = n;
        location = loc;
        description = des;
        history = h;
        image = im;
        employeesInBuilding = em;
    
    }
   // if the superclass returns nil, the method skips initialization and returns that value to its caller.
    return self;
}
     
     
@end
