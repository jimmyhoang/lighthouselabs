//
//  ScoreKeeper.h
//  Maths
//
//  Created by Jimmy Hoang on 2017-05-30.
//  Copyright © 2017 Jimmy Hoang. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "AdditionQuestion.h"

@interface ScoreKeeper : NSObject

@property (nonatomic) int correct;
@property (nonatomic) int wrong;

-(void)scoreQuestion:(AdditionQuestion*) question answer:(NSInteger) answer;
@end
