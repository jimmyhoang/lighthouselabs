//
//  main.m
//  Maths
//
//  Created by Jimmy Hoang on 2017-05-30.
//  Copyright © 2017 Jimmy Hoang. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Question.h"
#import "InputHandler.h"
#import "ScoreKeeper.h"
#import "QuestionManager.h"
#import "QuestionFactory.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        BOOL gameOn = YES;
        ScoreKeeper* scoreTrack = [[ScoreKeeper alloc] init];
        InputHandler* input = [[InputHandler alloc] init];
        QuestionManager* questions = [[QuestionManager alloc] init];
        QuestionFactory* qFactory = [[QuestionFactory alloc] init];
        NSString* answer = [[NSString alloc] init];
        NSRange checkString;
        NSInteger convertAnswer;
        
        
        while (gameOn) {
            Question* question = [qFactory generateRandomQuestion];
            [questions addQuestion:question];
            
            // Output question
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
                NSLog(@"%@",[questions timeOutput:[question answerTime]]);
                
            }

            
        }
    }
    return 0;
}
