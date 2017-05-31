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
        NSString* userID = [[NSString alloc] init];
        BOOL on = YES;
        
        userName = [input inputForPrompt:@"Enter your username:"];
        
        while (on) {
            // Menu
            NSLog(@"Main Menu");
            NSLog(@"new - Create a new contact");
            NSLog(@"list - List all saved contacts");
            NSLog(@"quit - Quit application");
            NSLog(@"show - Show a specific contact");
            NSLog(@"find - Find a contact");
            
            // Ask for user input
            userChoice = [input inputForPrompt:@"What would you like to do?"];
            
            
            // Determine what user inputted
            if ([userChoice localizedCaseInsensitiveContainsString:@"quit"]) {
                on = NO;
                NSLog(@"See you later");
                continue;
            } else if ([userChoice localizedCaseInsensitiveContainsString:@"new"]) {
                Contact* newContact = [[Contact alloc] init];
                newContact.email = [input inputForPrompt:@"Email: "];
                if (![contactList doesExist:newContact.email]){
                    newContact.name = [input inputForPrompt:@"Name: "];
                    [contactList addContact:newContact];
                } else {
                    NSLog(@"Duplicate email");
                }
                
            } else if ([userChoice localizedCaseInsensitiveContainsString:@"list"]) {
                [contactList listContacts];
                
            } else if ([userChoice localizedCaseInsensitiveContainsString:@"show"]) {
                userID = [input inputForPrompt:@"Enter the ID"];
                [contactList showContact:userID];
            } else if ([userChoice localizedCaseInsensitiveContainsString:@"find"]) {
                NSArray* searchArray = [userChoice componentsSeparatedByCharactersInSet:[NSCharacterSet characterSetWithCharactersInString:@" "]];
                NSString* search = [searchArray objectAtIndex:1];
                [contactList findContact:search];
                
            } else {
                NSLog(@"Invalid choice");
            }
            
            

            
            
        }
    }
    return 0;
}
