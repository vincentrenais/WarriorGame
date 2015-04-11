//
//  Warrior.h
//  WarriorGame
//
//  Created by Vincent Renais on 2015-04-11.
//  Copyright (c) 2015 Vincent Renais. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Weapon.h"

@interface Warrior : NSObject

@property Weapon *sword;
@property int life;
@property NSString *name1;
@property NSString *name2;

- (instancetype)init;
- (void) fight:(warrior *)otherPlayer
- (void) choose;
- (void) receiveDamage;
- (void) improveSword;

@end