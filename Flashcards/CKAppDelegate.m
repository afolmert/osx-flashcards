//
//  CKAppDelegate.m
//  Flashcards
//
//  Created by Adam Folmert on 12/14/14.
//  Copyright (c) 2014 Adam Folmert. All rights reserved.
//

#import "CKAppDelegate.h"
#import "CKEntry.h"

@implementation CKAppDelegate
{
    NSMutableArray *_entries;
    NSUInteger _index;
}

- (void)applicationDidFinishLaunching:(NSNotification *)aNotification
{
    // Insert code here to initialize your application
    _entries = [NSMutableArray array];
    
    for (NSUInteger i = 0; i < 10; i++) {
        NSString *question = [NSString stringWithFormat:@"Question %ld", (unsigned long)i];
        NSString *answer = [NSString stringWithFormat:@"Answer: %ld", (unsigned long)i];
        
        CKEntry *entry = [CKEntry entryWithQuestion:question answer:answer];
        [_entries addObject:entry];
    }
    
    _index = 0;
    
    [self updateGui];
}


- (void)updateGui
{
    CKEntry *currentEntry = _entries[_index];
    _questionLabel.stringValue = currentEntry.question;
    _answerLabel.stringValue = currentEntry.answer;
}


- (IBAction)nextQuestion:(id)sender 
{
    if (_index < [_entries count] - 1) {
        _index++;
    } else {
        _index = 0;
    }
    [self updateGui];
}


@end
