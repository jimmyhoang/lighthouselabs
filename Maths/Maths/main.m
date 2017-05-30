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
#import "ScoreKeeper.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        BOOL gameOn = YES;
        ScoreKeeper* scoreTrack = [[ScoreKeeper alloc] init];
        InputHandler* input = [[InputHandler alloc] init];
        NSString* answer = [[NSString alloc] init];
        NSRange checkString;
        NSInteger convertAnswer;
        
        while (gameOn) {
            AdditionQuestion* question = [[AdditionQuestion alloc] init];
            
            // Output question to User
            NSLog(@"%@",question.question);
            
            // Prompt user for answer
            NSLog(@"Enter your answer or type quit: ");
            
            // Get user input
            answer = [input input];

            // To check if user inputted quit, not case sensitive
            checkString = [answer rangeOfString:@"quit" options: NSCaseInsensitiveSearch];
            
            // Check if user input "quit" or proper answer
            if (checkString.location == 0) {
                gameOn = NO;
                NSLog(@"Correct Answers: %d",scoreTrack.correct);
                NSLog(@"Wrong Answers: %d",scoreTrack.wrong);
                continue;
            } else {
                // Convert NSString answer to NSInteger
                convertAnswer = [answer intValue];
                [scoreTrack scoreQuestion:question answer:convertAnswer];
                
            }

            
        }
    }
    return 0;
}
