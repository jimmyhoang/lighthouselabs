//
//  main.m
//  Maths
//
//  Created by Jimmy Hoang on 2017-05-30.
//  Copyright © 2017 Jimmy Hoang. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "AdditionQuestion.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        BOOL gameOn = YES;
        char userAnswer[255];
       
        
        while (gameOn) {
            AdditionQuestion* question = [[AdditionQuestion alloc] init];
            
            // Output question to User
            NSLog(@"%@",question.question);
            
            // Prompt user for answer
            NSLog(@"Enter your answer or type quit: ");
            
            fgets(userAnswer, 255, stdin);
            
            // Convert C String to NSString
            NSString *convertAnswer = [NSString stringWithCString:userAnswer encoding: NSUTF8StringEncoding];
           
            // To delete leading spaces and new line
            NSCharacterSet *spaces = [NSCharacterSet whitespaceCharacterSet];
            
            // Remove leading spaces and new line from NSString
            convertAnswer = [convertAnswer stringByTrimmingCharactersInSet:spaces];
            
            if (![convertAnswer isEqualToString:@"quit"]) {
                gameOn = NO;
                continue;
            } else {
                // Convert NSString answer to NSInteger
                NSInteger userAnswer = [convertAnswer intValue];
                
                // Check if user answer is correct
                    if (userAnswer == question.answer) {
                        NSLog(@"Right!");
                    } else {
                        NSLog(@"Wrong!");
                    }
                
            }
            
            
            
            
            
        }
    }
    return 0;
}
