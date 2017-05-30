//
//  main.m
//  ContactList
//
//  Created by Jimmy Hoang on 2017-05-30.
//  Copyright © 2017 Jimmy Hoang. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "InputCollector.h"
#import "Contact.h"
#import "ContactList.h"


int main(int argc, const char * argv[]) {
    @autoreleasepool {
        InputCollector* input = [[InputCollector alloc] init];
        ContactList* contactList = [[ContactList alloc] init];
        NSString* userName = [[NSString alloc] init];
        NSString* userChoice = [[NSString alloc] init];
        BOOL on = YES;
        
        userName = [input inputForPrompt:@"Enter your username:"];
        
        while (on) {
            // menu
            NSLog(@"Main Menu");
            NSLog(@"new - Create a new contact");
            NSLog(@"list - List all saved contacts");
            NSLog(@"quit - Quit application");
            
            userChoice = [input inputForPrompt:@"What would you like to do?"];
            
        
            if ([userChoice hasPrefix:@"quit"]) {
                on = NO;
                NSLog(@"See you later");
                continue;
            } else if ([userChoice hasPrefix:@"new"]) {
                Contact* newContact = [[Contact alloc] init];
                newContact.name = [input inputForPrompt:@"Name: "];
                newContact.email = [input inputForPrompt:@"Email: "];
                [contactList addContact:newContact];
                
            } else if ([userChoice hasPrefix:@"list"]) {
                [contactList listContacts];
                
            } else {
                NSLog(@"Invalid choice");
            }

            
            
        }
    }
    return 0;
}
