//
//  ViewController.m
//  DynamicsWithCollision
//
//  Created by Daniel Mathews on 2014-08-08.
//  Copyright (c) 2014 com.marcopolo. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end


@implementation ViewController

@synthesize animator = _animator;
@synthesize gravity = _gravity;
@synthesize collision = _collision;

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    UIView *square = [[UIView  alloc] initWithFrame:CGRectMake(0, 0, 100, 100)];
    square.center = CGPointMake(self.view.center.x, 0);
    square.backgroundColor = [UIColor redColor];
    [self.view addSubview:square];
    
    CGPoint center = CGPointMake(self.view.center.x, self.view.center.y);

    _animator = [[UIDynamicAnimator alloc] initWithReferenceView:self.view];
    _gravity = [[UIGravityBehavior alloc] initWithItems:@[square]];
    
    _collision = [[UICollisionBehavior alloc] initWithItems:@[square]];
    
    _collision.translatesReferenceBoundsIntoBoundary = YES;
    [_collision addBoundaryWithIdentifier:@"centerPoint" fromPoint:center toPoint:center];
    
    [_animator addBehavior:_collision];
    [_animator addBehavior:_gravity];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
