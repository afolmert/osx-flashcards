//
//  CKEntry.m
//  Flashcards
//
//  Created by Adam Folmert on 12/14/14.
//  Copyright (c) 2014 Adam Folmert. All rights reserved.
//

#import "CKEntry.h"

@implementation CKEntry


+ (instancetype)entryWithQuestion:(NSString *)question answer:(NSString *)answer
{
    return [[CKEntry alloc] initWithQuestion:question answer:answer];
    
}

- (instancetype)initWithQuestion:(NSString *)question answer:(NSString *)answer
{
    self = [super init];
    if (self != nil) {
        self.question = question;
        self.answer = answer;
    }
    return self;
}

- (instancetype)init
{
    return [self initWithQuestion:@"Question" answer:@"Answer"];
}   
           
@end
