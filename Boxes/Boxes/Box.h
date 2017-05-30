//
//  Box.h
//  Boxes
//
//  Created by Jimmy Hoang on 2017-05-30.
//  Copyright © 2017 Jimmy Hoang. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Box : NSObject

@property (nonatomic) float height;
@property (nonatomic) float width;
@property (nonatomic) float length;

-(instancetype)initWithHeight:(float) height andWidth:(float) width andLength:(float) length;
-(float)volume;
-(float)fitsIn:(Box*) otherBox;

@end
