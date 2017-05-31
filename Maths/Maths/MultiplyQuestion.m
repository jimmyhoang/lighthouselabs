//
//  MultiplyQuestion.m
//  Maths
//
//  Created by Jimmy Hoang on 2017-05-31.
//  Copyright © 2017 Jimmy Hoang. All rights reserved.
//

#import "MultiplyQuestion.h"

@implementation MultiplyQuestion

- (instancetype)init
{
    self = [super init];
    if (self) {
        [self generateQuestion];
    }
    return self;
}

-(void)generateQuestion {
    super.question = [NSString stringWithFormat:@"%ld x %ld = ?",super.leftValue, super.rightValue];
    super.answer = super.leftValue * super.rightValue;
}

@end
