//
//  AdditionQuestion.m
//  Maths
//
//  Created by Jimmy Hoang on 2017-05-30.
//  Copyright © 2017 Jimmy Hoang. All rights reserved.
//

#import "AdditionQuestion.h"

@implementation AdditionQuestion

-(instancetype)init {
    if (self = [super init]) {
        int num1 = arc4random_uniform(100);
        int num2 = arc4random_uniform(100);
        
        _question = [NSString stringWithFormat:@"%d + %d = ?",num1, num2];
        _answer = num1 + num2;
    }
    return self;
}

@end
