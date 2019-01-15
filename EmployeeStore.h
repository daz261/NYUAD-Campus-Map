//
//  EmployeeStore.h
//  NYUAD Campus
//
//  Created by Daria Zahaleanu on 3/11/18.
//  Copyright © 2018 Daria Zahaleanu. All rights reserved.



/***************************************************************************
 **************************** TO BE FURTHER DEVELOPED AND IMPLEMENTED ****************************
 ***************************************************************************/



#import <Foundation/Foundation.h>

@interface EmployeeStore : NSObject

@property (nonatomic) NSMutableArray *allEmployees;

+(EmployeeStore *)sharedStore;
-(NSMutableArray *)allEmployees;

@end
