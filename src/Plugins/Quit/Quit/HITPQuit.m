//
//  HITPQuit.m
//  Quit
//
//  Created by Yoann Gini on 12/07/2015.
//  Copyright (c) 2015 Yoann Gini (Open Source Project). All rights reserved.
//

#import "HITPQuit.h"

@implementation HITPQuit

-(NSMenuItem *)prepareNewMenuItem {
    NSMenuItem *exitItem = [[NSMenuItem alloc] initWithTitle:[[NSBundle bundleForClass:[self class]] localizedStringForKey:@"QUIT_SERVICE" value:@"" table:nil]
                                                      action:@selector(terminate:)
                                               keyEquivalent:@""];
    exitItem.target = NSApp;
    return exitItem;

}

@end
