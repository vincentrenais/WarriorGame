//
//  main.m
//  WarriorGame
//
//  Created by Vincent Renais on 2015-04-11.
//  Copyright (c) 2015 Vincent Renais. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Warrior.h"
#import "Weapon.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {

        Warrior *player1 = [[Warrior alloc] initWithName:@"Joe"];
        
        Warrior *player2 = [[Warrior alloc] initWithName:@"Mike"];
        
        if ([player1 life] >  0 && [player2 life] > 0) {
            [player1 chooseActionAgainst:player2];
            [player2 chooseActionAgainst:player1];
        } else if  ([player1 life] == 0){
            NSLog(@"Player2 won the game");
        } else {
            NSLog(@"Player 1 won the game");
        }
        
    }
    return 0;
}
