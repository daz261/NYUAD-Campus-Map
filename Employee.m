//
//  Employee.m
//  NYUAD Campus
//
//  Created by Daria Zahaleanu on 3/11/18.
//  Copyright © 2018 Daria Zahaleanu. All rights reserved.



/***************************************************************************
 **************************** TO BE FURTHER DEVELOPED AND IMPLEMENTED ****************************
 ***************************************************************************/


#import "Employee.h"

@implementation Employee

@synthesize name, department, email, phoneExt, buildingName, school;

-(id)initWithName: (NSString *)n department:(NSString *)dep email:(NSString *)mail phoneExt:(NSString *)phone buildingName:(NSString *)bname school:(NSString *)s;
{
    self = [super init];
    if (self) {
        name = n;
        department = dep;
        email = mail;
        phoneExt = phone;
        buildingName = bname;
        school = s;
    }
    return self;
}

-(NSString *)description
{
    return name;
}







@end
