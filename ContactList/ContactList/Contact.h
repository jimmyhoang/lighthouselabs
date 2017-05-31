//
//  Contact.h
//  ContactList
//
//  Created by Jimmy Hoang on 2017-05-30.
//  Copyright © 2017 Jimmy Hoang. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Contact : NSObject

@property (nonatomic) NSString* name;
@property (nonatomic) NSString* email;
@property (nonatomic) NSString* phoneNumber;
@property (nonatomic) NSString* phoneLabel;
@property (nonatomic) NSMutableDictionary* phone;


@end
