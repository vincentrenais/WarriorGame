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
@property NSString *name;
@property int swordPower;

- (instancetype)initWithName:(NSString *)playerName;
- (void) chooseActionAgainst:(Warrior *)otherPlayer;
- (void) fight:(Warrior *)otherPlayer;
- (void) improveWeapon;

@end
