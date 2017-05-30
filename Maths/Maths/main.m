//
//  main.m
//  Maths
//
//  Created by Jimmy Hoang on 2017-05-30.
//  Copyright © 2017 Jimmy Hoang. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "AdditionQuestion.h"
#import "InputHandler.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        BOOL gameOn = YES;
        
        while (gameOn) {
            AdditionQuestion* question = [[AdditionQuestion alloc] init];
            InputHandler* input = [[InputHandler alloc] init];
            
            // Output question to User
            NSLog(@"%@",question.question);
            
            // Prompt user for answer
            NSLog(@"Enter your answer or type quit: ");
            
            // Get user input
            NSString* answer = [input input];

            NSRange checkString = [answer rangeOfString:@"quit" options: NSCaseInsensitiveSearch];
            
            // Check if user input "quit" or proper answer
            if (checkString.location == 0) {
                gameOn = NO;
                continue;
            } else {
                // Convert NSString answer to NSInteger
                NSInteger convertAnswer = [answer intValue];
                
                // Check if user answer is correct
                    if (convertAnswer == question.answer) {
                        NSLog(@"Right!");
                    } else {
                        NSLog(@"Wrong!");
                    }
                
            }

            
        }
    }
    return 0;
}
