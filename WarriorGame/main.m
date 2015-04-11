//
//  main.m
//  WarriorGame
//
//  Created by Vincent Renais on 2015-04-11.
//  Copyright (c) 2015 Vincent Renais. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Warrior.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {

        Warrior *Achilles = [[Warrior alloc] init];
        Warrior *Spartacus = [[Warrior alloc] init];
        
        
        if ([Achilles life] >  0 && [Spartacus life] > 0) {
            [Achilles chooseActionAgainst:Spartacus];
            [Achilles chooseActionAgainst:Spartacus];
        } else if  ([Achilles life] == 0){
            NSLog(@"Spartacus won the game");
        } else {
            NSLog(@"Achilles won the game");
        }
        
    }
    return 0;
}
