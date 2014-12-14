//
//  CKEntry.h
//  Flashcards
//
//  Created by Adam Folmert on 12/14/14.
//  Copyright (c) 2014 Adam Folmert. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface CKEntry : NSObject


@property (nonatomic, copy) NSString *question;
@property (nonatomic, copy) NSString *answer;


+ (instancetype)entryWithQuestion:(NSString *)question answer:(NSString *)answer;
- (instancetype)initWithQuestion:(NSString *)question answer:(NSString *)answer;

@end
