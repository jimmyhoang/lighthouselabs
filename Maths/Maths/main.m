//
//  main.m
//  Maths
//
//  Created by Jimmy Hoang on 2017-05-30.
//  Copyright © 2017 Jimmy Hoang. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        int repeat = 0;
       
        
        while (repeat == 0) {
            char userAnswer[255];
            
            NSLog(@"Enter your answer: ");
            
            fgets(userAnswer, 255, stdin);
            
            // Convert C String to NSString
            NSString *answer = [NSString stringWithCString:userAnswer encoding: NSUTF8StringEncoding];
           
            // To delete leading spaces and new line
            NSCharacterSet *spaces = [NSCharacterSet whitespaceCharacterSet];
        
            NSLog(@"%@",[answer stringByTrimmingCharactersInSet:spaces]);
            
            
            
        }
    }
    return 0;
}
