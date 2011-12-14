//
//  Ant.m
//  BattleAnts
//
//  Created by Steve Clement on 12/12/11.
//  Copyright (c) 2011 Alpharez, LLC. All rights reserved.
//

#import "Ant.h"

@implementation Ant
-(Ant*)init {
    x=0;y=0;z=0; // where is the mound?
    attack = 8 + arc4random() % 4;
    defense = 5 + arc4random() % 4;
    health = 100;
    level = 1;
    senseRange = 2 + arc4random() % 2;
    printf("%d %d %d %d %d\n", attack, defense, health, level, senseRange);
    return self;
}
-(void)bite {
    printf("doing %d damage.\n", attack);
}
-(void)sting {
    printf("doing %d damage.\n", attack);
}
-(void)forage {
    printf("checking for food in %d range.\n", senseRange);
}
-(void)levelUp {
    attack += arc4random() % 2;
    defense += arc4random() % 2;
    health += arc4random() % 10;
    level++;
    printf("ant reached level %d!\n", level);
    printf("%d %d %d %d %d\n", attack, defense, health, level, senseRange);
}
-(void)move {
    // is enemyNear?  foodNear?  trail near?
    // maybe move to them?
    // add random 0,1,-1 to x,y,&z
}
-(Boolean)enemyNear {
    // check sensorRange area for enemies
    return true;
}
-(Boolean)foodNear {
    // check sensorRanve area for food
    return true;
}
@end

@implementation Queen
-(void)move {
    // The Queen doesn't move
}
@end

@implementation Worker

@end

@implementation Drone

@end

