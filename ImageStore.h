//
//  ImageStore.h
//  NYUAD Campus
//
//  Created by Daria Zahaleanu on 3/11/18.
//  Copyright © 2018 Daria Zahaleanu. All rights reserved.
//

/***************************************************************************
 **************************** TO BE FURTHER DEVELOPED AND IMPLEMENTED ****************************
 ***************************************************************************/


#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

@interface ImageStore : NSObject

@property (nonatomic, strong)NSMutableDictionary *dictionary;

+(ImageStore *)sharedStore;

-(void)setImage:(UIImage *)image forKey:(NSString *)key;
-(UIImage *)imageForKey:(NSString *)key;
-(void)deleteImageForKey:(NSString *)key;

@end
