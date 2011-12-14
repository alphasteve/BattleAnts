//
//  Ant.h
//  BattleAnts
//
//  Created by Steve Clement on 12/12/11.
//  Copyright (c) 2011 Alpharez, LLC. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Ant : NSObject {
    // initialize each ant, roll random stats like a D&D character
    int x, y, z; // location
    int health; // 0-100, 0 is dead
    char sex; // m or f
    int level; // start at level 1.
    int colony; // what colony is this ant? 1 or 2? or 3?
    int age; // how old is this ant?
    int attack, defense; // battle stats
    int senseRange; // max range where it can detect stuff
    int size; // 1=minor,2=median,3=major (bigger costs more)
    // attack and defense stats (health -= (attack - defense)) 
    //  (100 - (20 - 4)) new health = 84
    int won; // battles won... chance to level up each battle won
}
-(Ant*)init;
-(void)bite;  // is enemy adjacent?  then bite!
-(void)sting; // is enemy adjacent?  then sting!
-(void)forage;  // is food adjacent?  then collect it!
-(void)levelUp;  // increase (attack/defense/health)
-(void)move; // go away from colony using trail if there is one, if not, make a new one
-(Boolean)enemyNear; // is enemy adjacent?
-(Boolean)foodNear; // is food adjacent?
// during each turn do enemyNear, foodNear and then bite,sting,forage or move
@end

@interface Queen : Ant {
    // if the queen dies, game over.  So she lives until game over.
    // not really colonies can have multiple queens!
    // more hitpoints than a worker but not as many as a soldier?
}
-(void)move;
@end

@interface Drone : Ant {
    // male
    // they mate with the queen
}
@end

@interface Worker : Ant {
    // usually sterile female
    // a scout ant is just a worker having a look around
    // there are 3 sizes of worker minor,median,major
    // start out making minor workers for scouting and quick harvesting... use bigger ones to fight
    // if a worker finds fungus, then it starts collecting it to take back.  It follows it's own
    // pheromone trail.  If it finds an enemy ant/colony it follows its way back to communicate the
    // news
    int fungus; // amount of fungus it is carrying
}
@end
