//
//  QuestionManager.m
//  Maths
//
//  Created by Jimmy Hoang on 2017-05-31.
//  Copyright © 2017 Jimmy Hoang. All rights reserved.
//

#import "QuestionManager.h"

@implementation QuestionManager {
    float totalTime;
}

- (instancetype)init
{
    self = [super init];
    if (self) {
        _questions = [[NSMutableArray alloc] init];
    }
    return self;
}

-(void)addQuestion:(Question*)question {
    [self.questions addObject:question];
}

-(NSString*)timeOutput:(NSTimeInterval) answerTime {
    totalTime += answerTime;
    float avgTime = totalTime/[self.questions count];
    NSString* output = [NSString stringWithFormat:@"Total time: %.1f, average time: %.1f", totalTime, avgTime];

    return output;
}



@end
