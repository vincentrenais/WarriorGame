//
//  Warrior.m
//  WarriorGame
//
//  Created by Vincent Renais on 2015-04-11.
//  Copyright (c) 2015 Vincent Renais. All rights reserved.
//

#import "Warrior.h"

@implementation Warrior


- (instancetype)init
{
    self = [super init];
    if (self) {
        self.life = 100;
        self.swordPower = 10;
    }
    return self;
}

- (void) chooseActionAgainst:(Warrior *)otherPlayer{

    int answer = 0;

    do {
        NSLog(@"\nThis is your turn %@, choose wisely...\n1.Fighting!\n2.Improving your weapon\nYour choice: ", self);
        scanf("%d", &answer);
    } while (answer != 1 && answer != 2);
    
    if (answer == 1) {
        [self fight:otherPlayer];
    } else {
        [self improveWeapon];
    }
}


- (void) fight:(Warrior *)otherPlayer{

    otherPlayer.life = otherPlayer.life - 10;
}


- (void) improveWeapon {

    self.swordPower = self.swordPower + 10;

}


@end
