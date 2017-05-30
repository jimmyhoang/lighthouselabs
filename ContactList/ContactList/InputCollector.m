//
//  InputCollector.m
//  ContactList
//
//  Created by Jimmy Hoang on 2017-05-30.
//  Copyright © 2017 Jimmy Hoang. All rights reserved.
//

#import "InputCollector.h"

@implementation InputCollector

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
    
    return convertAnswer;
}

@end
