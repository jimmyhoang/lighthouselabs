//
//  main.m
//  WordEffects
//
//  Created by Jimmy Hoang on 2017-05-29.
//  Copyright © 2017 Jimmy Hoang. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        char inputChars[255];
        char inputChoice;
        int selection;
        int repeat = 0;
        
        // ask for user string input and display it back
        printf("Input a string: ");
        fgets(inputChars, 255, stdin);
        printf("Your string is: %s\n", inputChars);
        
        NSString *inputString = [NSString stringWithUTF8String:inputChars];
        
        while (repeat == 0) {
            
            // give user options
            printf("What would you like to do?\n");
            printf("Pick a number between 1-6\n");
            printf("1. Uppercase\n");
            printf("2. Lowercase\n");
            printf("3. Numberize\n");
            printf("4. Canadianize\n");
            printf("5. Respond\n");
            printf("6. De-Space-It\n");
            printf("7. Word Count\n");
            printf("8. Punctuation Removal\n");

            // get user option choice
            fgets(&inputChoice, 10, stdin);

            // convert char to int for switch case
            selection = (int)inputChoice -48;
            
            // switch case for user option
            switch (selection)
            {
                case 1:
                {
                    NSString *uppercase = [inputString uppercaseString];
                    NSLog(@"%@", uppercase);
                    NSLog(@"%p", &uppercase);
                    break;
                }
                case 2:
                {
                    NSString *lowercase = [inputString lowercaseString];
                    NSLog(@"%@", lowercase);
                    NSLog(@"%p", &lowercase);
                    break;
                }
                case 3:
                {
                    if ([inputString rangeOfCharacterFromSet:[NSCharacterSet letterCharacterSet]].location != NSNotFound) {
                        NSLog(@"This string contains invalid characters for Numberization!\n");
                    } else {
                        NSNumber *numbFromString = @([inputString integerValue]);
                        NSLog(@"%@", numbFromString);
                        NSLog(@"%p", &numbFromString);
                    }
                    break;
                }
                case 4:
                {
                    NSString *canadianize = [inputString stringByAppendingString:@", eh?"];
                    NSLog(@"%@", canadianize);
                    NSLog(@"%p", &canadianize);
                    break;
                }
                case 5:
                {
                    if ([inputString hasSuffix:@"?"])
                    {
                        NSLog(@"I don't know");
                    } else if ([inputString hasSuffix:@"!"]) {
                        NSLog(@"Whoa, calm down!");
                    }
                    break;
                }
                case 6:
                {
                    NSString *despace = [inputString stringByReplacingOccurrencesOfString:@" " withString:@"-"];
                    NSLog(@"%@", despace);
                    NSLog(@"%p", &despace);
                    break;
                }
                case 7:
                {
                    int wordCount = 0;
                    NSCharacterSet *spaces = [NSCharacterSet whitespaceAndNewlineCharacterSet];
                    NSScanner *scanner = [NSScanner scannerWithString: inputString];
                    
                    while ([scanner scanUpToCharactersFromSet:spaces intoString:nil]) {
                         wordCount++;
                    }
                    
                    NSLog(@"Number of words: %ld", (long)wordCount);
                    break;
                }
                case 8:
                {
                    if ([inputString containsString:@"."])
                    {
                        NSString *noPeriod = [inputString stringByReplacingOccurrencesOfString:@"." withString:@""];
                        NSLog(@"%@", noPeriod);
                        NSLog(@"%p", &noPeriod);
                    } else if ([inputString containsString:@","]) {
                        NSString *noComma = [inputString stringByReplacingOccurrencesOfString:@"," withString:@""];
                        NSLog(@"%@", noComma);
                        NSLog(@"%p", &noComma);
                    } else if ([inputString containsString:@"?"]) {
                        NSString *noQuestion = [inputString stringByReplacingOccurrencesOfString:@"?" withString:@""];
                        NSLog(@"%@", noQuestion);
                        NSLog(@"%p", &noQuestion);
                    } else if ([inputString containsString:@":"]) {
                        NSString *noColon = [inputString stringByReplacingOccurrencesOfString:@":" withString:@""];
                        NSLog(@"%@", noColon);
                        NSLog(@"%p", &noColon);
                    } else if ([inputString containsString:@";"]) {
                        NSString *noSColon = [inputString stringByReplacingOccurrencesOfString:@";" withString:@""];
                        NSLog(@"%@", noSColon);
                        NSLog(@"%p", &noSColon);
                    }
                    break;
                }
            }
            
        }
    }
    return 0;
}
