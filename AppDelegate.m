//
//  AppDelegate.m
//  BattleAnts
//
//  Created by Steve Clement on 12/12/11.
//  Copyright (c) 2011 Alpharez, LLC. All rights reserved.
//

#import "AppDelegate.h"
#import "Ant.h"

@implementation AppDelegate

@synthesize window = _window;

- (void)applicationDidFinishLaunching:(NSNotification *)aNotification
{
    // Insert code here to initialize your application
    id ant1;
    ant1 = [[Worker alloc] init];
    [ant1 bite];
    [ant1 sting];
    [ant1 forage];
    [ant1 levelUp];
    [ant1 bite];
}

@end
