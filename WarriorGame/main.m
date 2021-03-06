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

        // Create two warrior objects
        
        Warrior *player1 = [[Warrior alloc] initWithName:@"Achilles"];
        Warrior *player2 = [[Warrior alloc] initWithName:@"Spartacus"];
        
        
        // Create a while loop so the game plays as long as both warriors are alive
        
        while ([player1 life] >  0 && [player2 life] > 0) {
            [player1 chooseActionAgainst:player2];
            
            // Avoid negative life level for player 2
            
            if ([player2 life] == 0) {
                continue;
            }
            [player2 chooseActionAgainst:player1];
        }
        
        // if loop for the final results
        
        if  ([player1 life] == 0){
            NSLog(@"\n%@ won the game", player2.name);
        } else if  ([player2 life] == 0){
            NSLog(@"\n%@ won the game", player1.name);
        }
        
    }
    return 0;
}
