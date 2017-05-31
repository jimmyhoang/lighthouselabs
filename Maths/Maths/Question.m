//
//  AdditionQuestion.m
//  Maths
//
//  Created by Jimmy Hoang on 2017-05-30.
//  Copyright © 2017 Jimmy Hoang. All rights reserved.
//

#import "Question.h"

@implementation Question

-(instancetype)init {
    if (self = [super init]) {
        _rightValue = arc4random_uniform(100);
        _leftValue = arc4random_uniform(100);
        _startTime = [NSDate date];
    }
    return self;
}

-(NSInteger)answer {
    _endTime = [NSDate date];
    return _answer;
}

-(NSTimeInterval)answerTime {
    double answerTime = [self.endTime timeIntervalSinceDate:self.startTime];
    NSLog(@"Answer time: %@", [NSString stringWithFormat:@"%.2g",answerTime]);
    return answerTime;
}

-(void)generateQuestion {
    
}
@end
