//
//  Warrior.m
//  WarriorGame
//
//  Created by Vincent Renais on 2015-04-11.
//  Copyright (c) 2015 Vincent Renais. All rights reserved.
//

#import "Warrior.h"

@implementation Warrior


- (instancetype)initWithName:(NSString *)playerName {
    self = [super init];
    if (self) {
        self.life = 50;
        self.swordPower = 10;
        self.name = playerName;
    }
    return self;
}

- (void) chooseActionAgainst:(Warrior *)otherPlayer{

    int answer = 0;

    do {
        NSLog(@"\n\nThis is your turn %@, choose wisely...\n\n1.Fighting!\n\n2.Improving your weapon\n\n\nYour choice: ", self.name);
        scanf("%d", &answer);
    } while (answer != 1 && answer != 2);
    
    if (answer == 1) {
        [self fight:otherPlayer];
        NSLog(@"\n\n%@, your life level is %d, your weapon power is %d\n\n", self.name, self.life, self.swordPower);
    } else {
        [self improveWeapon];
        NSLog(@"\n\n%@, your life level is %d, your weapon power is %d\n\n", self.name, self.life, self.swordPower);
    }
}


- (void) fight:(Warrior *)otherPlayer{

    otherPlayer.life = otherPlayer.life - self.swordPower;
}


- (void) improveWeapon {

    self.swordPower = self.swordPower + 10;

}


@end
