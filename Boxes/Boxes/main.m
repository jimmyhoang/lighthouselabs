//
//  main.m
//  Boxes
//
//  Created by Jimmy Hoang on 2017-05-30.
//  Copyright © 2017 Jimmy Hoang. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Box.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        float boxVolume;
        float boxVolume2;
        float timesFit;
        
        
        Box *box1 = [[Box alloc] initWithHeight:20.5 andWidth:32.1 andLength:41.3];
        Box *box2 = [[Box alloc] initWithHeight:50 andWidth:62.2 andLength:74];
        
        boxVolume = [box1 volume];
        boxVolume2 = [box2 volume];
        
        NSLog(@"The volume of the box is %.2f",boxVolume);
        NSLog(@"The volume of box2 is %.2f",boxVolume2);
        
        
        timesFit = [box1 fitsIn:box2];
        
        NSLog(@"Box1 fits in Box2 %.2f times",timesFit);
    }
    return 0;
}
