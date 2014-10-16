//
//  ViewController.h
//  DynamicsWithCollision
//
//  Created by Daniel Mathews on 2014-08-08.
//  Copyright (c) 2014 com.marcopolo. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController

@property (nonatomic, strong) UIDynamicAnimator *animator;
@property (nonatomic, strong) UIGravityBehavior *gravity;
@property (nonatomic, strong) UICollisionBehavior *collision;

@end

