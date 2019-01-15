//
//  ImageStore.m
//NYUAD Campus
//
//  Created by Daria Zahaleanu on 3/11/18.
//  Copyright © 2018 Daria Zahaleanu. All rights reserved.


/***************************************************************************
 **************************** TO BE FURTHER DEVELOPED AND IMPLEMENTED ****************************
 ***************************************************************************/



#import "ImageStore.h"

@implementation ImageStore

@synthesize dictionary;

+(id)allocWithZone:(struct _NSZone *)zone
{
    return [self sharedStore];
}

+(ImageStore *)sharedStore
{
    static ImageStore *sharedStore = nil;
    
    if (!sharedStore) {
        sharedStore = [[super allocWithZone:NULL] init];
    }
    
    return sharedStore;
}

-(id)init
{
    self = [super init];
    
    if (self) {
        dictionary = [[NSMutableDictionary alloc] init];
    }
    
    return self;
}

-(void)setImage:(UIImage *)image forKey:(NSString *)key
{
    [dictionary setObject:image forKey:key];
}

-(UIImage *)imageForKey:(NSString *)key
{
    return [dictionary objectForKey:key];
}

-(void)deleteImageForKey:(NSString *)key
{
    if (!key) {
        return;
    } else {
        [dictionary removeObjectForKey:key];
    }
}

@end
