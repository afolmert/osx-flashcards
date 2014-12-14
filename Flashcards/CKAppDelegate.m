//
//  CKAppDelegate.m
//  Flashcards
//
//  Created by Adam Folmert on 12/14/14.
//  Copyright (c) 2014 Adam Folmert. All rights reserved.
//

#import "CKAppDelegate.h"
#import "CKDrillWindowController.h"
#import "CKEntry.h"

@implementation CKAppDelegate
{
    CKDrillWindowController *_drillWindowController;
}

- (void)applicationDidFinishLaunching:(NSNotification *)notification
{
    NSLog(@"Application did finish loading ");
    _drillWindowController = [[CKDrillWindowController alloc] initWithWindowNibName:@"CKDrillWindowController"];
    [_drillWindowController showWindow:self];
    
    
}
@end
