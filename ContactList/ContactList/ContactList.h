//
//  ContactList.h
//  ContactList
//
//  Created by Jimmy Hoang on 2017-05-30.
//  Copyright © 2017 Jimmy Hoang. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Contact.h"


@interface ContactList : NSObject

@property (nonatomic) NSMutableArray* contactList;

-(void)addContact:(Contact *)newContact;
-(void)listContacts;
-(void)showContact:(NSString *) id;
-(void)findContact:(NSString *) search;
-(bool)doesExist:(NSString *)email;
@end
