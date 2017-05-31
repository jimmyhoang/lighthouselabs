//
//  ScoreKeeper.m
//  Maths
//
//  Created by Jimmy Hoang on 2017-05-30.
//  Copyright © 2017 Jimmy Hoang. All rights reserved.
//

#import "ScoreKeeper.h"

@implementation ScoreKeeper

-(void)scoreQuestion:(Question*) question answer:(NSInteger) answer {
   
    // Check if user answer is correct
    if (answer == question.answer) {
        NSLog(@"Right!");
        self.correct++;
    } else {
        NSLog(@"Wrong!");
        self.wrong++;
    }

    int total = self.correct + self.wrong;
    float wPercent = (100 * self.correct)/total;
    
    NSLog(@"Score: %d correct, %d wrong -- %.2f%%\n", self.correct, self.wrong, wPercent);
}

@end
