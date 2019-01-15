//
//  EmployeeStore.m
//  NYUAD Campus
//
//  Created by Daria Zahaleanu on 3/11/18.
//  Copyright © 2018 Daria Zahaleanu. All rights reserved.


/***************************************************************************
 **************************** TO BE FURTHER DEVELOPED AND IMPLEMENTED ****************************
 ***************************************************************************/



#import "EmployeeStore.h"
#import "Employee.h"

@implementation EmployeeStore

@synthesize allEmployees;

+(EmployeeStore *)sharedStore
{
    static EmployeeStore *sharedStore = nil;
    
    if (!sharedStore) {
        sharedStore = [[super allocWithZone:nil]init];
    }
    return sharedStore;
}

-(id)init
{
    self = [super init];
    if (self) {
        
        allEmployees = [[NSMutableArray alloc]init];
        
        
        Employee *newEmployee = [[Employee alloc]init];
        [newEmployee setName:@"Eric Hunt"];
      //  [newEmployee setDepartment:@"Computer Science"];
        [newEmployee setEmail:@"ehunt@shorecrest.org"];
        [newEmployee setPhoneExt:@"(727) 522-2111 655"];
     
      //  [newEmployee setSchool:@"US"];
        
        [allEmployees addObject:newEmployee];
        
        newEmployee = [[Employee alloc]init];
        [newEmployee setName:@"Michael Steele"];
     //   [newEmployee setDepartment:@"Science"];
        [newEmployee setEmail:@"msteele@shorecrest.org"];
        [newEmployee setPhoneExt:@"(727) 522-2111 618"];

      //  [newEmployee setSchool:@"US"];
        
        [allEmployees addObject:newEmployee];
        
        newEmployee = [[Employee alloc]init];
        [newEmployee setName:@"Kurt Wahlgren"];
      //  [newEmployee setDepartment:@"Social Studies"];
        [newEmployee setEmail:@"kwahlgren@shorecrest.org"];
        [newEmployee setPhoneExt:@"(727) 522-2111 624"];
     
      //  [newEmployee setSchool:@"US"];
        
        [allEmployees addObject:newEmployee];
        
        newEmployee = [[Employee alloc]init];
        [newEmployee setName:@"David Hyink"];
    //    [newEmployee setDepartment:@"Science"];
        [newEmployee setEmail:@"dhyink@shorecrest.org"];
        [newEmployee setPhoneExt:@"(727) 522-2111 633"];
      //  [newEmployee setBuildingName:@"Sushi Counter"];
      //  [newEmployee setSchool:@"US"];
        
        [allEmployees addObject:newEmployee];
        
        newEmployee = [[Employee alloc]init];
        [newEmployee setName:@"Stephen Collins"];
     //   [newEmployee setDepartment:@"Science"];
        [newEmployee setEmail:@"scollins@shorecrest.org"];
        [newEmployee setPhoneExt:@"(727) 522-2111"];

       // [newEmployee setSchool:@"MS"];
        
        [allEmployees addObject:newEmployee];
        
        newEmployee = [[Employee alloc]init];
        
        [newEmployee setName:@"Mal Ellenburg"];
      //  [newEmployee setDepartment:@"English"];
        [newEmployee setEmail:@"mellenburg@shorecrest.org"];
        [newEmployee setPhoneExt:@"(727) 522-2111 655"];
     
       // [newEmployee setSchool:@"US"];
        
        [allEmployees addObject:newEmployee];
        
        newEmployee = [[Employee alloc]init];
        [newEmployee setName:@"Sarah Moebius"];
       // [newEmployee setDepartment:@"Mathematics"];
        [newEmployee setEmail:@"smoebius@shorecrest.org"];
        [newEmployee setPhoneExt:@"(727) 522-2111 655"];
    
       // [newEmployee setSchool:@"US"];
        
        [allEmployees addObject:newEmployee];
        
        newEmployee = [[Employee alloc]init];
        [newEmployee setName:@"Aaron Sober"];
       // [newEmployee setDepartment:@"Arts & Humanities"];
        [newEmployee setEmail:@"asober@shorecrest.org"];
        [newEmployee setPhoneExt:@"(727) 522-2111 655"];
    
       // [newEmployee setSchool:@"US"];
        
        [allEmployees addObject:newEmployee];
        
        newEmployee = [[Employee alloc]init];
        [newEmployee setName:@"Teresa Andres"];
       // [newEmployee setDepartment:@"World Languages"];
        [newEmployee setEmail:@"tandres@shorecrest.org"];
        [newEmployee setPhoneExt:@"(727) 522-2111 655"];
     
       // [newEmployee setSchool:@"US"];
        
        [allEmployees addObject:newEmployee];
        
        newEmployee = [[Employee alloc]init];
        [newEmployee setName:@"Kathryn Sessions"];
      //  [newEmployee setDepartment:@"Administration"];
        [newEmployee setEmail:@"ksessions@shorecrest.org"];
        [newEmployee setPhoneExt:@"(727) 522-2111 655"];
     
      //  [newEmployee setSchool:@"US"];
        
        [allEmployees addObject:newEmployee];
        newEmployee = [[Employee alloc]init];
        [newEmployee setName:@"Charla Gaglio"];
      //  [newEmployee setDepartment:@"Arts & Humanities"];
        [newEmployee setEmail:@"cgaglio@shorecrest.org"];
        [newEmployee setPhoneExt:@"(727) 522-2111 655"];
      
        //[newEmployee setSchool:@"US"];
        
        [allEmployees addObject:newEmployee];
        newEmployee = [[Employee alloc]init];
        [newEmployee setName:@"William Leavengood"];
    //    [newEmployee setDepartment:@"Arts & Humanities"];
        [newEmployee setEmail:@"wleavengood@shorecrest.org"];
        [newEmployee setPhoneExt:@"(727) 522-2111 655"];
  
     //   [newEmployee setSchool:@"US"];
        
        [allEmployees addObject:newEmployee];
        newEmployee = [[Employee alloc]init];
        [newEmployee setName:@"Lee Ahlin"];
      //  [newEmployee setDepartment:@"Arts & Humanities"];
        [newEmployee setEmail:@"lahlin@shorecrest.org"];
        [newEmployee setPhoneExt:@"(727) 522-2111 655"];
    
        
        [allEmployees addObject:newEmployee];
        newEmployee = [[Employee alloc]init];
        [newEmployee setName:@"Thomas Glaister"];
       // [newEmployee setDepartment:@"Arts & Humanities"];
        [newEmployee setEmail:@"tglaister@shorecrest.org"];
        [newEmployee setPhoneExt:@"(727) 522-2111 655"];
    
      //  [newEmployee setSchool:@"US"];
        
        [allEmployees addObject:newEmployee];
        newEmployee = [[Employee alloc]init];
        [newEmployee setName:@"Cheryl Lee"];
       // [newEmployee setDepartment:@"Arts & Humanities"];
        [newEmployee setEmail:@"clee@shorecrest.org"];
        [newEmployee setPhoneExt:@"(727) 522-2111 655"];
    
    //    [newEmployee setSchool:@"US"];
        
        [allEmployees addObject:newEmployee];
        newEmployee = [[Employee alloc]init];
        [newEmployee setName:@"Michael McCarthy"];
     //   [newEmployee setDepartment:@"Arts & Humanities"];
        [newEmployee setEmail:@"mmcarthy@shorecrest.org"];
        [newEmployee setPhoneExt:@"(727) 522-2111 655"];
     
     //   [newEmployee setSchool:@"US"];
        
        [allEmployees addObject:newEmployee];
        newEmployee = [[Employee alloc]init];
        [newEmployee setName:@"Bradley Miller"];
      //  [newEmployee setDepartment:@"Arts & Humanities"];
        [newEmployee setEmail:@"bmiller@shorecrest.org"];
        [newEmployee setPhoneExt:@"(727) 522-2111 655"];
        [newEmployee setBuildingName:@"LS Art"];
      //  [newEmployee setSchool:@"US"];
        
        [allEmployees addObject:newEmployee];
        newEmployee = [[Employee alloc]init];
        [newEmployee setName:@"Ralph Littlefield"];
     //   [newEmployee setDepartment:@"English"];
        [newEmployee setEmail:@"rlittlefeild@shorecrest.org"];
        [newEmployee setPhoneExt:@"(727) 522-2111 655"];
    
     //   [newEmployee setSchool:@"US"];
        
        [allEmployees addObject:newEmployee];
        newEmployee = [[Employee alloc]init];
        [newEmployee setName:@"James Henderson"];
       // [newEmployee setDepartment:@"English"];
        [newEmployee setEmail:@"jhenderson@shorecrest.org"];
        [newEmployee setPhoneExt:@"(727) 522-2111 655"];
     
     //   [newEmployee setSchool:@"US"];
        
        [allEmployees addObject:newEmployee];
        newEmployee = [[Employee alloc]init];
        [newEmployee setName:@"Christopher Powers"];
       // [newEmployee setDepartment:@"English"];
        [newEmployee setEmail:@"cpowers@shorecrest.org"];
        [newEmployee setPhoneExt:@"(727) 522-2111 655"];
  
     //   [newEmployee setSchool:@"US"];
        
        [allEmployees addObject:newEmployee];
        newEmployee = [[Employee alloc]init];
        [newEmployee setName:@"Ralph Seymour"];
      //  [newEmployee setDepartment:@"English"];
        [newEmployee setEmail:@"rseymour@shorecrest.org"];
        [newEmployee setPhoneExt:@"(727) 522-2111 655"];
   
     //   [newEmployee setSchool:@"US"];
        
        [allEmployees addObject:newEmployee];
        newEmployee = [[Employee alloc]init];
        [newEmployee setName:@"Beth Bartlett"];
      //  [newEmployee setDepartment:@"Mathematics"];
        [newEmployee setEmail:@"bbartlett@shorecrest.org"];
        [newEmployee setPhoneExt:@"(727) 522-2111 655"];
     
       // [newEmployee setSchool:@"US"];
        
        [allEmployees addObject:newEmployee];
        newEmployee = [[Employee alloc]init];
        [newEmployee setName:@"Traci Burke"];
      //  [newEmployee setDepartment:@"Mathematics"];
        [newEmployee setEmail:@"tburke@shorecrest.org"];
        [newEmployee setPhoneExt:@"(727) 522-2111 655"];
   
      
        
     
        
        [allEmployees addObject:newEmployee];
//        newEmployee = [[Employee alloc]init];
//        [newEmployee setName:@""];
//        [newEmployee setDepartment:@""];
//        [newEmployee setEmail:@""];
//        [newEmployee setPhoneExt:@""];
//        [newEmployee setBuildingName:@""];
//        [newEmployee setSchool:@""];


    }
    
    return self;
    
}

-(NSArray *)allEmployees
{
    return allEmployees;
}

@end
