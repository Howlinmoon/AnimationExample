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
        
        self.backgroundColor = [SKColor colorWithRed:0.29 green:0.75 blue:0.99 alpha:1.0];
        
        // Create a generic platform w/out using any picture assets
        SKSpriteNode *platform = [SKSpriteNode spriteNodeWithColor:[SKColor brownColor] size:CGSizeMake(100, 20)];
        platform.position = CGPointMake(50,100);
        [self addChild:platform];
        
        
        // Create an action - for moving the platform from one side to the other
        SKAction *move = [SKAction moveByX:(size.width - platform.size.width) y:0 duration:2];
        // Create another action, which is the reverse of the first, to move it back
        SKAction *moveBack = [move reversedAction];
        // Finally again, a wait action for separating the two...
        SKAction *wait = [SKAction waitForDuration:1.5];

        // Build our sequence
        SKAction *backAndForth = [SKAction sequence:@[move, wait, moveBack, wait]];
        
        // A repeater action
        SKAction *repeater = [SKAction repeatActionForever:backAndForth];
        
        [platform runAction:repeater];
        

    }
    return self;
}


-(void)update:(CFTimeInterval)currentTime {
    /* Called before each frame is rendered */
}

@end
