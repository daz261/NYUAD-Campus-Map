//
//  Employee.h
//  NYUAD Campus
//
//  Created by Daria Zahaleanu on 3/11/18.
//  Copyright © 2018 Daria Zahaleanu. All rights reserved.
//



/***************************************************************************
 **************************** TO BE FURTHER DEVELOPED AND IMPLEMENTED ****************************
 ***************************************************************************/
#import <Foundation/Foundation.h>

@interface Employee : NSObject

@property NSString *name;
@property NSString *department;
@property NSString *email;
@property NSString *phoneExt;
@property NSString *buildingName;
@property NSString *school;          //(ES,LS,MS,UP,AD)

-(id)initWithName: (NSString *)n department:(NSString *)dep email:(NSString *)mail phoneExt:(NSString *)phone buildingName:(NSString *)bname school:(NSString *)s;




@end
