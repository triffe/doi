//
//  GameScene.h
//  TextShooter_711118
//

//  Copyright (c) 2015年 triffe. All rights reserved.
//

#import <SpriteKit/SpriteKit.h>

@interface GameScene : SKScene


@property (assign, nonatomic) NSUInteger levelNumber;
@property (assign, nonatomic) NSUInteger playerLives;
@property (assign, nonatomic) BOOL finished;

+ (instancetype)sceneWithSize:(CGSize)size levelNumber:(NSUInteger)levelNumber;
- (instancetype)initWithSize:(CGSize)size levelNumber:(NSUInteger)levelNumber;



@end
