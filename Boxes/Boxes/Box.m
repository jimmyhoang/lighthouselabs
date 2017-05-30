//
//  Box.m
//  Boxes
//
//  Created by Jimmy Hoang on 2017-05-30.
//  Copyright © 2017 Jimmy Hoang. All rights reserved.
//

#import "Box.h"

@implementation Box

-(instancetype)initWithHeight:(float)height andWidth:(float)width andLength:(float)length {
    self = [super init];
    if (self) {
        self.height = height;
        self.width = width;
        self.length = length;
    }
    return self;
}

-(float)volume {
    return self.height * self.width * self.length;
}

-(float)fitsIn:(Box *)otherBox {
    return [otherBox volume]/[self volume];
}
@end
