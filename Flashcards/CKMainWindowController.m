//
//  CKMainWindowController.m
//  Flashcards
//
//  Created by Adam Folmert on 12/14/14.
//  Copyright (c) 2014 Adam Folmert. All rights reserved.
//

#import "CKMainWindowController.h"
#import "CKEntry.h"

@interface CKMainWindowController ()

@end

@implementation CKMainWindowController
{
    NSMutableArray *_entries;
    NSUInteger _index;
}




- (id)initWithWindow:(NSWindow *)window
{
    self = [super initWithWindow:window];
    if (self) {
        NSLog(@"initWithWindow START %@", window);
        // Initialization code here.
    }
    
    return self;
}


- (void)windowDidLoad
{
    NSLog(@"windowDidLoad START");
    [super windowDidLoad];
    
    // Implement this method to handle any initialization after your window controller's window has been loaded from its nib file.
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
