//
//  ContactList.m
//  ContactList
//
//  Created by Jimmy Hoang on 2017-05-30.
//  Copyright © 2017 Jimmy Hoang. All rights reserved.
//

#import "ContactList.h"

@implementation ContactList

-(instancetype)init {
    if (self = [super init]) {
        _contactList = [[NSMutableArray alloc] init];
    }
    return self;
}

-(void)addContact:(Contact *)newContact {
    [_contactList addObject:newContact];
}

-(void)listContacts {
    NSArray *names = [self.contactList valueForKey:@"name"];
    for (int i = 0; i < [names count]; i++) {
        NSLog(@"#%d, <%@>",i, [names objectAtIndex:i]);
    }
}
@end
