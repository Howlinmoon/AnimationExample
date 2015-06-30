//
//  MyScene.m
//  AnimationExamples
//
//  Created by jim Veneskey on 6/30/15.
//  Copyright (c) 2015 Jim Veneskey. All rights reserved.
//

#import "MyScene.h"

@implementation MyScene

-(id)initWithSize:(CGSize)size {    
    if (self = [super initWithSize:size]) {
        /* Setup your scene here */
        
        self.backgroundColor = [SKColor colorWithRed:0.15 green:0.15 blue:0.3 alpha:1.0];
        

    }
    return self;
}


-(void)update:(CFTimeInterval)currentTime {
    /* Called before each frame is rendered */
}

@end
