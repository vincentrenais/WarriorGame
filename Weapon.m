//
//  Weapon.m
//  WarriorGame
//
//  Created by Vincent Renais on 2015-04-11.
//  Copyright (c) 2015 Vincent Renais. All rights reserved.
//

#import "Weapon.h"

@implementation Weapon

- (instancetype)init
{
    self = [super init];
    if (self) {
        self.damage = 10;
    }
    return self;
}



@end
