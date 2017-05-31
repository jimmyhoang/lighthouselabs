//
//  QuestionManager.h
//  Maths
//
//  Created by Jimmy Hoang on 2017-05-31.
//  Copyright © 2017 Jimmy Hoang. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "AdditionQuestion.h"

@interface QuestionManager : NSObject

@property (nonatomic, strong) NSMutableArray* questions;


-(void)addQuestion:(AdditionQuestion*)question;
-(NSString*)timeOutput:(NSTimeInterval)answerTime;

@end
