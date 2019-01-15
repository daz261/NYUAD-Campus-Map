//
//  AnimationViewController.h
//  NYUAD Campus
//
//  Created by Daria Zahaleanu on 3/11/18.
//  Copyright © 2018 Daria Zahaleanu. All rights reserved.
//

#import <UIKit/UIKit.h>
//class AnimationViewController is defined as a UIViewController
//The UIViewController class defines the shared behavior that is common to all view controllers. 
@interface AnimationViewController : UIViewController
//weak property = Weak references don't increment the reference count of the object. So in this particular case, if A has no other objects referencing it but B, A's count would be 0 given B's weak reference.
@property (weak, nonatomic) IBOutlet UIImageView *animationImage;

@end
