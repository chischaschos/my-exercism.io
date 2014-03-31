//
//  Bob.m
//  Bob
//
//  Created by Emmanuel Delgado on 3/31/14.
//  Copyright (c) 2014 chischaschos. All rights reserved.
//

#import "Bob.h"

@implementation Bob

- (NSString *) hey: (NSString *) message {

    if ([self isEmpty:message]) {
        return @"Fine, be that way.";

    } else if ([self isScreaming:message]) {
        return @"Woah, chill out!";


    } else if ([self isQuestion:message]) {
        return @"Sure.";

    } else {
        return @"Whatever.";
    }

}

- (BOOL) isQuestion: (NSString *) message {
    return [message hasSuffix:@"?"];
}

-(BOOL) isEmpty: (NSString *) message {
    NSString *trimmedMessage = [message stringByTrimmingCharactersInSet:[NSCharacterSet whitespaceCharacterSet]];
    return [trimmedMessage length] == 0;
}

-  (BOOL) isScreaming: (NSString *) message {
    NSError *error = nil;
    NSRegularExpression *regexp = [NSRegularExpression regularExpressionWithPattern:@"^[,.?\\s\\d]+$"
                                                                            options:0
                                                                              error:&error];

    NSUInteger numberOfMatches = [regexp numberOfMatchesInString:message
                                                         options:0
                                                           range:NSMakeRange(0, [message length])];

    return [message isEqualToString:[message uppercaseString]] && numberOfMatches == 0;
}

@end
