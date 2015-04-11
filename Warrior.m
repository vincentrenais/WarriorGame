//
//  Warrior.m
//  WarriorGame
//
//  Created by Vincent Renais on 2015-04-11.
//  Copyright (c) 2015 Vincent Renais. All rights reserved.
//

#import "Warrior.h"

@implementation Warrior


- (instancetype)initWithName:(NSString *)name
{
    self = [super init];
    if (self) {
        self.life = 100;
    }
    return self;
}

- (void) chooseAction{

    int answer = 0;
    
    do {
        NSLog(@"\nChoose between:\n1.Fighting!\n2.Improving your weapon\nYour choice: ");
        scanf("%d", &answer);
    } while (answer != 1 && answer != 2);
    
    if (answer == 1) {
        [self fight:otherPlayer];
    } else {
        [self improveSword];
    }
}


- (void) fight:(Warrior *)otherPlayer{

    
}


- (void) receiveDamages:(int)damages {

    self.life -= 10;

}

- (void) improveSword{



}


@end
