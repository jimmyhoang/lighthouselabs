//
//  SubtractionQuestion.m
//  Maths
//
//  Created by Jimmy Hoang on 2017-05-31.
//  Copyright © 2017 Jimmy Hoang. All rights reserved.
//

#import "SubtractionQuestion.h"

@implementation SubtractionQuestion

- (instancetype)init
{
    self = [super init];
    if (self) {
        [self generateQuestion];
    }
    return self;
}

-(void)generateQuestion {
    super.question = [NSString stringWithFormat:@"%ld - %ld = ?",super.leftValue, super.rightValue];
    super.answer = super.leftValue - super.rightValue;
}

@end
