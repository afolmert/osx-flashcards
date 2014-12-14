//
//  CKAppDelegate.h
//  Flashcards
//
//  Created by Adam Folmert on 12/14/14.
//  Copyright (c) 2014 Adam Folmert. All rights reserved.
//

#import <Cocoa/Cocoa.h>

@interface CKAppDelegate : NSObject <NSApplicationDelegate>

@property (assign) IBOutlet NSWindow *window;


@property (weak) IBOutlet NSTextField *answerLabel;
@property (weak) IBOutlet NSTextField *questionLabel;
- (IBAction)nextQuestion:(id)sender;

@end
