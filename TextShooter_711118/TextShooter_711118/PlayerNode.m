//
//  PlayerNode.m
//  TextShooter_711118
//
//  Created by lanou3g on 15/11/18.
//  Copyright © 2015年 triffe. All rights reserved.
//

#import "PlayerNode.h"

@implementation PlayerNode


- (instancetype)init{
    if (self = [super init]) {
        self.name = [NSString stringWithFormat:@"Player %p", self];
    }
    return self;
}


- (void)initNodeGraph{
    SKLabelNode *label = [SKLabelNode labelNodeWithFontNamed:@"Courier"];
    label.fontColor = [SKColor darkGrayColor];
    label.fontSize = 40;
    label.text = @"v";
    label.zRotation = M_PI;
    label.name = @"label";
    
    [self addChild:label];
    
    
}






@end
