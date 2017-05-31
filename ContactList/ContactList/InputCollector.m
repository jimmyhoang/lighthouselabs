//
//  InputCollector.m
//  ContactList
//
//  Created by Jimmy Hoang on 2017-05-30.
//  Copyright © 2017 Jimmy Hoang. All rights reserved.
//

#import "InputCollector.h"

@implementation InputCollector

- (instancetype)init
{
    self = [super init];
    if (self) {
        _history = [[NSMutableArray alloc] init];
    }
    return self;
}

-(NSString *)inputForPrompt:(NSString *)promptString {
    NSLog(@"%@",promptString);
    
    char userInput[255];
    
    fgets(userInput, 255, stdin);
    
    // Convert C String to NSString
    NSString *convertAnswer = [NSString stringWithCString:userInput encoding: NSUTF8StringEncoding];
    
    // To delete leading spaces and new line
    NSCharacterSet *spaces = [NSCharacterSet whitespaceCharacterSet];
    
    // Remove leading spaces and new line from NSString
    convertAnswer = [convertAnswer stringByTrimmingCharactersInSet:spaces];
    
    // Only log commands
    if ([convertAnswer localizedCaseInsensitiveContainsString:@"new"] || [convertAnswer localizedCaseInsensitiveContainsString:@"list"] || [convertAnswer localizedCaseInsensitiveContainsString:@"quit"] || [convertAnswer localizedCaseInsensitiveContainsString:@"show"] || [convertAnswer localizedCaseInsensitiveContainsString:@"find"]) {
        [self.history addObject:convertAnswer];
    }
    
    return convertAnswer;
}

-(void)displayHistory {
    NSLog(@"Last 3 commands: ");
    NSLog(@"%@",[self.history lastObject]);
    NSLog(@"%@",[self.history objectAtIndex:[self.history count]-2]);
    NSLog(@"%@",[self.history objectAtIndex:[self.history count]-3]);
}

@end
