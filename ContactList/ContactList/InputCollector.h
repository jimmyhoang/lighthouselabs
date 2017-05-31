//
//  InputCollector.h
//  ContactList
//
//  Created by Jimmy Hoang on 2017-05-30.
//  Copyright © 2017 Jimmy Hoang. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface InputCollector : NSObject

@property (nonatomic) NSMutableArray* history;

-(NSString *)inputForPrompt:(NSString *)promptString;
-(void)displayHistory;


@end
