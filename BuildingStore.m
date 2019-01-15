//
//  BuildingStore.m
//  NYUAD Campus
//
//  Created by Daria Zahaleanu on 3/11/18.
//  Copyright © 2018 Daria Zahaleanu. All rights reserved.

#import "BuildingStore.h"
#import "Building.h"
#import "Annotation.h"
#import "ImageStore.h"
//#import "EmployeeStore.h"
@implementation BuildingStore
//getter and setter for allBuildings
@synthesize allBuildings;
//class method - static
+(BuildingStore *)sharedStore;
{
    static BuildingStore *sharedStore = nil;
    
    if (!sharedStore) {
        sharedStore = [[super allocWithZone:nil]init]; //if sharedStore is not nill, then allocate space
    }
    return sharedStore;
}
//instance method
-(id)init
{
    self = [super init]; ////  equivalent to "self does not equal nil"
    if (self) {
        allBuildings = [[NSMutableArray alloc]init]; //assign all the buildings to the mutable array
    //define two objects, one for images and one for buildings
        ImageStore *imageStore = [ImageStore sharedStore];
        Building *newBuilding = [[Building alloc]init];

        [newBuilding setName:@"Arts Center"];
        [newBuilding setImageKey:[newBuilding name]];
        [newBuilding setDescription:@"Welcome to The Arts Center at NYU Abu Dhabi — a beacon of inspiration at the university where performance, education, and community come together in a vibrant, state of the art setting to enrich the cultural life of both the campus and the city."];
      //  [newBuilding setDepartments:[NSArray arrayWithObjects:@"Performance", @"Arts & Humanities", @"Administration", nil]];          //-------------------------
        
        //ADDING EMPLOYEES TO A TEMPORARY ARRAY
        NSMutableArray *temporaryArray = [[NSMutableArray alloc]init]; //switch temp array withEmployeesinBuilding
        [temporaryArray removeAllObjects];
       // for (Employee *e in [[EmployeeStore sharedStore]allEmployees])
      //  {
            //if ([[newBuilding departments] containsObject:[e department]] && [[newBuilding name] isEqualToString:[e buildingName]]) {
           //     [temporaryArray addObject:e];
            //}
       // }
        //LABELING THE DEPARTMENT
        NSSortDescriptor *descriptor = [[NSSortDescriptor alloc]initWithKey:@"department" ascending:NO];
        NSMutableArray *departmentArray = (NSMutableArray *)[temporaryArray sortedArrayUsingDescriptors:[NSArray arrayWithObjects:descriptor, nil]];
        [newBuilding setEmployeesInBuilding:departmentArray];
        //ASSIGNING THE IMAGE TO THE ANNOTATION
        UIImage *image = [UIImage imageNamed:@"ArtsCenter.PNG"];
        [imageStore setImage:image forKey:[newBuilding name]];
//        [newBuilding setLocation:34];
        [allBuildings addObject:newBuilding];
///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
        newBuilding = [[Building alloc]init];
        [newBuilding setName:@"Campus Center"];
        [newBuilding setImageKey:[newBuilding name]];
        [newBuilding setDescription:@"New York University Abu Dhabi is a research university with a fully integrated liberal arts and science college, located in Abu Dhabi, United Arab Emirates."];
      //LABELING THE DEPARTMENT
       // [newBuilding setDepartments:[NSArray arrayWithObjects:@"Visitors", nil]];
        [temporaryArray removeAllObjects];
    //EMPLOYEES
        //for (Employee *e in [[EmployeeStore sharedStore]allEmployees] )
       // {
         //   if ([[newBuilding departments] containsObject:[e department]] && [[newBuilding name] isEqualToString:[e buildingName]]) {
           //     [temporaryArray addObject:e];
            //}
        //}
       departmentArray = (NSMutableArray *)[temporaryArray sortedArrayUsingDescriptors:[NSArray arrayWithObjects:descriptor, nil]];
        [newBuilding setEmployeesInBuilding:departmentArray];
        //ASSIGNING THE IMAGE TO THE ANNOTATION
        image = [UIImage imageNamed:@"CampusCenter.PNG"];
        [imageStore setImage:image forKey:[newBuilding name]];
//        [newBuilding setLocation:34];
        [allBuildings addObject:newBuilding];
        ///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
        newBuilding = [[Building alloc]init];
        [newBuilding setName:@"Torch Club"];
        [newBuilding setImageKey:[newBuilding name]];
        [newBuilding setDescription:@"The Torch Club serves as an alternative table service restaurant that is open only to NYUAD faculty and staff. The spacious outdoor terrace is great for escaping the office for a relaxed meal during the cooler months. The Torch Club is also an excellent location for work functions and events."];

        [temporaryArray removeAllObjects];
        //for (Employee *e in [[EmployeeStore sharedStore]allEmployees])
        //{
          //  if ([[newBuilding departments] containsObject:[e department]] && [[newBuilding name] isEqualToString:[e buildingName]]) {
           //     [temporaryArray addObject:e];
            //}
        //}
        departmentArray = (NSMutableArray *)[temporaryArray sortedArrayUsingDescriptors:[NSArray arrayWithObjects:descriptor, nil]];
         [newBuilding setEmployeesInBuilding:departmentArray];

        image = [UIImage imageNamed:@"TorchClub.PNG"];
        [imageStore setImage:image forKey:[newBuilding name]];
//        [newBuilding setLocation:34];
        [allBuildings addObject:newBuilding];
    ///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
        newBuilding = [[Building alloc]init];
        [newBuilding setName:@"Pharmacy"];
        [newBuilding setImageKey:[newBuilding name]];
        [newBuilding setDescription:@"Campus Pharmacy offers a full range of services to meet all your pharmacy needs. Our responsible staff works hard to make sure each patient is taken care of with fast and friendly service, accurate prescriptions, and reliable healthcare advice."];
      //  [newBuilding setDepartments:[NSArray arrayWithObjects:@"Pharmacy", @"Pharmacist", nil]];

        [temporaryArray removeAllObjects];

//        for (Employee *e in [[EmployeeStore sharedStore]allEmployees])
//        {
//            if ([[newBuilding departments] containsObject:[e department]] && [[newBuilding name] isEqualToString:[e buildingName]])
//            {
//                [temporaryArray addObject:e];
//            }
//        }

        departmentArray = (NSMutableArray *)[temporaryArray sortedArrayUsingDescriptors:[NSArray arrayWithObjects:descriptor, nil]];
        [newBuilding setEmployeesInBuilding:departmentArray];

        image = [UIImage imageNamed:@"Pharmacy.PNG"];
        [imageStore setImage:image forKey:[newBuilding name]];
        
//        [newBuilding setLocation:34];
        ///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
        [allBuildings addObject:newBuilding];
        
        newBuilding = [[Building alloc]init];
        [newBuilding setName:@"NYUAD Institute"];
        [newBuilding setImageKey:[newBuilding name]];
        [newBuilding setDescription:@"The NYU Abu Dhabi Institute promotes cutting-edge and innovative research through the support of its 12 centers, labs, and projects."];
      //  [newBuilding setDepartments:[NSArray arrayWithObjects:@"World Languages", @"Social Studies", @"Mathematics", @"English", @"Computer Science",@"Administration",nil]];

        [temporaryArray removeAllObjects];

      //  for (Employee *e in [[EmployeeStore sharedStore]allEmployees])
      //  {
       //     if ([[newBuilding departments] containsObject:[e department]] && [[newBuilding name] isEqualToString:[e buildingName]]) {
         //       [temporaryArray addObject:e];
           // }
        //}

        departmentArray = (NSMutableArray *)[temporaryArray sortedArrayUsingDescriptors:[NSArray arrayWithObjects:descriptor, nil]];
        [newBuilding setEmployeesInBuilding:departmentArray];

        image = [UIImage imageNamed:@"NYUADInstitute.PNG"];
        [imageStore setImage:image forKey:[newBuilding name]];
//        [newBuilding setLocation:34];
        [allBuildings addObject:newBuilding];
           ///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
        newBuilding = [[Building alloc]init];
        [newBuilding setName:@"Welcome Center"];
        [newBuilding setImageKey:[newBuilding name]];
        [newBuilding setDescription:@"The Welcome Center is located in the main building, C2, where staff and security guards provide assistance and guidance to visitors. "];
       // [newBuilding setDepartments:[NSArray arrayWithObjects:@"Visitors", @"Guidance", nil]];
        [temporaryArray removeAllObjects];

//        for (Employee *e in [[EmployeeStore sharedStore]allEmployees])
//        {
//            if ([[newBuilding departments] containsObject:[e department]] && [[newBuilding name] isEqualToString:[e buildingName]]) {
//                [temporaryArray addObject:e];
//            }
//        }

        departmentArray = (NSMutableArray *)[temporaryArray sortedArrayUsingDescriptors:[NSArray arrayWithObjects:descriptor, nil]];

        [newBuilding setEmployeesInBuilding:departmentArray];

        image = [UIImage imageNamed:@"WelcomeCenter.PNG"];
        [imageStore setImage:image forKey:[newBuilding name]];
//        [newBuilding setLocation:34];
        [allBuildings addObject:newBuilding];
          ///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
        newBuilding = [[Building alloc]init];
        [newBuilding setName:@"West Parking"];
        [newBuilding setImageKey:[newBuilding name]];
        [newBuilding setDescription:@"The West Parking garage is located in the western part of the campus. It is built on two underground levels."];
        //[newBuilding setDepartments:[NSArray arrayWithObjects:@"Cars", @"Parking", nil]];
        [temporaryArray removeAllObjects];

//        for (Employee *e in [[EmployeeStore sharedStore]allEmployees])
//        {
//            if ([[newBuilding departments] containsObject:[e department]] && [[newBuilding name] isEqualToString:[e buildingName]]) {
//                [temporaryArray addObject:e];
//            }
//        }
        departmentArray = (NSMutableArray *)[temporaryArray sortedArrayUsingDescriptors:[NSArray arrayWithObjects:descriptor, nil]];
        [newBuilding setEmployeesInBuilding:departmentArray];

        image = [UIImage imageNamed:@"WestParking.PNG"];
        [imageStore setImage:image forKey:[newBuilding name]];
//        [newBuilding setLocation:34];
        ///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
        [allBuildings addObject:newBuilding];
        
        newBuilding = [[Building alloc]init];
        [newBuilding setName:@"Sushi Counter"];
        [newBuilding setImageKey:[newBuilding name]];
        [newBuilding setDescription:@"Sushi Counter offers an innovative approach to fast food; providing quality sushi, quick service at affordable prices and convenient locations."];
       // [newBuilding setDepartments:[NSArray arrayWithObjects:@"Restaurant", nil]];          //------------------
       
        [temporaryArray removeAllObjects];
//        for (Employee *e in [[EmployeeStore sharedStore]allEmployees])
//        {
//            if ([[newBuilding departments] containsObject:[e department]] && [[newBuilding name] isEqualToString:[e buildingName]]) {
//                [temporaryArray addObject:e];
//            }
//        }

        departmentArray = (NSMutableArray *)[temporaryArray sortedArrayUsingDescriptors:[NSArray arrayWithObjects:descriptor, nil]];

        [newBuilding setEmployeesInBuilding:departmentArray];
        NSLog(@"%@", [newBuilding departments]);
        NSLog(@"%@", [newBuilding employeesInBuilding]);

        image = [UIImage imageNamed:@"SushiCounter.PNG"];
        [imageStore setImage:image forKey:[newBuilding name]];
//        [newBuilding setLocation:34];
        [allBuildings addObject:newBuilding];
         ///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
        newBuilding = [[Building alloc]init];
        [newBuilding setName:@"West Dining Hall"];
        [newBuilding setImageKey:[newBuilding name]];
        [newBuilding setDescription:@"The Campus West restaurant is the community favorite with rotating menus at breakfast, lunch, and dinner. This is the place to sample global favorites, including Arabic cuisines, and try roast dinners with all the trimmings, or stone-baked pizzas."];
        [temporaryArray removeAllObjects];

//        for (Employee *e in [[EmployeeStore sharedStore]allEmployees])
//        {
//            if ([[newBuilding departments] containsObject:[e department]] && [[newBuilding name] isEqualToString:[e buildingName]]) {
//                [temporaryArray addObject:e];
//            }
//        }
        departmentArray = (NSMutableArray *)[temporaryArray sortedArrayUsingDescriptors:[NSArray arrayWithObjects:descriptor, nil]];
        [newBuilding setEmployeesInBuilding:departmentArray];

        image = [UIImage imageNamed:@"WestDiningHall.PNG"];
        [imageStore setImage:image forKey:[newBuilding name]];
//        [newBuilding setLocation:34];
        [allBuildings addObject:newBuilding];
         ///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
        newBuilding = [[Building alloc]init];
        [newBuilding setName:@"Library Cafe"];
        [newBuilding setImageKey:[newBuilding name]];
        [newBuilding setDescription:@"The Library Cafe is the go-to place for a calm study atmosphere while enjoying specialty tea, fresh coffee, and handmade pastries. It's also a popular spot to catch up with friends."];
     //   [newBuilding setDepartments:[NSArray arrayWithObjects:@"Restaurant", nil]];
        [temporaryArray removeAllObjects];

//        for (Employee *e in [[EmployeeStore sharedStore]allEmployees])
//        {
//            if ([[newBuilding departments] containsObject:[e department]] && [[newBuilding name] isEqualToString:[e buildingName]]) {
//                [temporaryArray addObject:e];
//            }
//        }
        departmentArray = (NSMutableArray *)[temporaryArray sortedArrayUsingDescriptors:[NSArray arrayWithObjects:descriptor, nil]];
        [newBuilding setEmployeesInBuilding:departmentArray];

        image = [UIImage imageNamed:@"LibraryCafe.PNG"];
        [imageStore setImage:image forKey:[newBuilding name]];
//        [newBuilding setLocation:34];
        [allBuildings addObject:newBuilding];
        
    }
    
    
    return self;
}

-(NSArray *)allBuildings;
{
    return allBuildings;
}


@end
