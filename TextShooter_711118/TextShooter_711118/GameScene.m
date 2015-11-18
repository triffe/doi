//
//  GameScene.m
//  TextShooter_711118
//
//  Created by lanou3g on 15/11/18.
//  Copyright (c) 2015年 triffe. All rights reserved.
//

#import "GameScene.h"
#import "PlayerNode.h"

@interface GameScene()
@property (strong, nonatomic) PlayerNode *playerNode;

@end

@implementation GameScene

-(void)didMoveToView:(SKView *)view {
    /* Setup your scene here */
    
    SKLabelNode *myLabel = [SKLabelNode labelNodeWithFontNamed:@"Chalkduster"];
    
    myLabel.text = @"Hello, World!";
    myLabel.fontSize = 45;
    myLabel.position = CGPointMake(CGRectGetMidX(self.frame),
                                   CGRectGetMidY(self.frame));
    
    [self addChild:myLabel];
}



// 工厂方法, 快速创建关卡并立即设置他的序数.
+ (instancetype)sceneWithSize:(CGSize)size levelNumber:(NSUInteger)levelNumber{
    return [[self alloc] initWithSize:size levelNumber:levelNumber];
}
// 重写类的初始化函数
- (instancetype)initWithSize:(CGSize)size{
    return [self initWithSize:size levelNumber:1];
}

- (instancetype)initWithSize:(CGSize)size levelNumber:(NSUInteger)levelNumber{
    if (self = [super initWithSize:size]) {
        _levelNumber = levelNumber;
        _playerLives = 5;
        
        self.backgroundColor = [SKColor whiteColor];
        
        SKLabelNode *lives = [SKLabelNode labelNodeWithFontNamed:@"Courier"];
        lives.fontSize = 16;
        lives.fontColor = [SKColor blackColor];
        lives.name = @"LivesLabel";
        lives.text = [NSString stringWithFormat:@"Lives: @lu", _playerLives];
        lives.verticalAlignmentMode = SKLabelVerticalAlignmentModeTop;
        lives.horizontalAlignmentMode = SKLabelHorizontalAlignmentModeRight;
        lives.position = CGPointMake(self.frame.size.width, self.frame.size.height);
        [self addChild:lives];
        SKLabelNode *level = [SKLabelNode labelNodeWithFontNamed:@"Courier"];
        level.fontSize = 16;
        level.fontColor = [SKColor blackColor];
        level.name = @"LevelLabel";
        level.text = [NSString stringWithFormat:@"Level: %lu", _levelNumber];
        level.verticalAlignmentMode = SKLabelVerticalAlignmentModeTop;
        level.horizontalAlignmentMode = SKLabelHorizontalAlignmentModeLeft;
        level.position = CGPointMake(0, self.frame.size.height);
        [self addChild:level];
        
        // 场景中添加玩家
        _playerNode = [PlayerNode node];
        _playerNode.position = CGPointMake(CGRectGetMidX(self.frame), CGRectGetHeight(self.frame) *0.1);
        NSLog(@"哈哈哈");
        [self addChild:_playerNode];
        
        
    }
    return self;
}



-(void)touchesBegan:(NSSet *)touches withEvent:(UIEvent *)event {
    /* Called when a touch begins */
    
    for (UITouch *touch in touches) {
        CGPoint location = [touch locationInNode:self];
//        
//        SKSpriteNode *sprite = [SKSpriteNode spriteNodeWithImageNamed:@"Spaceship"];
//        
//        sprite.xScale = 0.5;
//        sprite.yScale = 0.5;
//        sprite.position = location;
//        
//        SKAction *action = [SKAction rotateByAngle:M_PI duration:1];
//        
//        [sprite runAction:[SKAction repeatActionForever:action]];
//        
//        [self addChild:sprite];
    }
}

-(void)update:(CFTimeInterval)currentTime {
    /* Called before each frame is rendered */
}

@end
