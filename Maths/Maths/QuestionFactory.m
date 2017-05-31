//
//  QuestionFactory.m
//  Maths
//
//  Created by Jimmy Hoang on 2017-05-31.
//  Copyright © 2017 Jimmy Hoang. All rights reserved.
//

#import "QuestionFactory.h"

@implementation QuestionFactory

- (instancetype)init
{
    self = [super init];
    if (self) {
        _questionSubclassNames = @[@"AdditionQuestion", @"SubtractionQuestion", @"MultiplyQuestion", @"DivisionQuestion"];

    }
    return self;
}

-(Question *)generateRandomQuestion {
    int random = arc4random() % 4;
    NSString* className = [_questionSubclassNames objectAtIndex:random];
    Question* randomQuestion = [[NSClassFromString(className) alloc] init];
    return randomQuestion;
}

@end
