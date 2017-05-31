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
    [self.contactList addObject:newContact];
}

-(void)listContacts {
    NSArray *names = [self.contactList valueForKey:@"name"];
    for (int i = 0; i < [names count]; i++) {
        NSLog(@"#%d, <%@>",i, [names objectAtIndex:i]);
    }
}

-(void)showContact:(NSString *)id {
    int i = [id intValue];
    
    // Check if valid entry
    if (i < [self.contactList count] ) {
        NSString* name = [self.contactList[i] valueForKey:@"name"];
        NSString* email = [self.contactList[i] valueForKey:@"email"];
    
        NSLog(@"Name: %@", name);
        NSLog(@"Email: %@", email);
    } else {
        NSLog(@"Contact not found");
    }
}

-(void)findContact:(NSString *) search {
    NSPredicate *predicate = [NSPredicate predicateWithFormat:@"self.name contains[cd] %@ OR self.email contains[cd] %@", search, search];
    NSArray *findPerson = [self.contactList filteredArrayUsingPredicate:predicate];
    NSString* name = [[NSString alloc] init];
    NSString* email = [[NSString alloc] init];
    
    NSLog(@"%@",[findPerson objectAtIndex:0]);

    for (int i = 0; i < [findPerson count]; i++) {
        name = [findPerson[i] valueForKey:@"name"];
        email = [findPerson[i] valueForKey:@"email"];
        NSLog(@"Name: %@", name);
        NSLog(@"Email: %@", email);
    }
}

-(bool)doesExist:(NSString *)email {
    NSPredicate *predicate = [NSPredicate predicateWithFormat:@"self.email contains[cd] %@", email];
    NSArray *findEmail = [self.contactList filteredArrayUsingPredicate:predicate];
    
    if (!findEmail || [findEmail count]) {
        return TRUE;
    } else {
        return FALSE;
    }
}

@end
