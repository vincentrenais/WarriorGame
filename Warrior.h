//
//  Warrior.h
//  WarriorGame
//
//  Created by Vincent Renais on 2015-04-11.
//  Copyright (c) 2015 Vincent Renais. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Warrior : NSObject

@property int life;
@property int swordPower;
@property NSString *player1;
@property NSString *player2;

- (instancetype)init;
- (void) chooseActionAgainst:(Warrior *)otherPlayer;
- (void) fight:(Warrior *)otherPlayer;
- (void) improveWeapon;

@end
