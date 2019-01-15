//
//  BuildingStore.h
//  NYUAD Campus
//
//  Created by Daria Zahaleanu on 3/11/18.
//  Copyright © 2018 Daria Zahaleanu. All rights reserved.


//The Foundation framework provides a base layer of functionality for apps and frameworks, including data storage and persistence, text processing, date and time calculations, sorting and filtering, and networking. The classes, protocols, and data types defined by Foundation are used throughout the macOS, iOS, watchOS, and tvOS SDKs.
#import <Foundation/Foundation.h>
//defining the interface for the Building Store object
@interface BuildingStore : NSObject
//The NSMutableArray class declares the programmatic interface to objects that manage a modifiable array of objects. This class adds insertion and deletion operations to the basic array-handling behavior inherited from NSArray.
//define the allBuildings pointer
@property (nonatomic) NSMutableArray *allBuildings;

//plus indicates a class method - methods which do not have access to an instances properties. Used for methods like alloc or helper methods for the class that do not require access to instance variables
+(BuildingStore *)sharedStore;
//the dash indicates an instance method -Instance methods operate on specific instances of classes. Instance methods are not declared as static.
-(NSArray *)allBuildings;

@end
