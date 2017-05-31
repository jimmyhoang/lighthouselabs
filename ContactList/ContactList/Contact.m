//
//  Contact.m
//  ContactList
//
//  Created by Jimmy Hoang on 2017-05-30.
//  Copyright © 2017 Jimmy Hoang. All rights reserved.
//

#import "Contact.h"

@implementation Contact

- (instancetype)init
{
    self = [super init];
    if (self) {
        _phone = [[NSMutableDictionary alloc] init];
    }
    return self;
}
@end
