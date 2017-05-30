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
        
        
        printf("Input a string: ");
        fgets(inputChars, 255, stdin);
        printf("Your string is: %s\n", inputChars);
        
        NSString *inputString = [NSString stringWithUTF8String:inputChars];
        
        while (repeat == 0) {
            
            printf("What would you like to do?\n");
            printf("Pick a number between 1-6\n");
            printf("1. Uppercase\n");
            printf("2. Lowercase\n");
            printf("3. Numberize\n");
            printf("4. Canadianize\n");
            printf("5. Respond\n");
            printf("6. De-Space-It\n");

            fgets(&inputChoice, 3, stdin);

            selection = inputChoice -48;
            NSLog(@"%d\n", selection);
            
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
                    NSNumber *numbFromString = @([inputString integerValue]);
                    NSLog(@"%@", numbFromString);
                    NSLog(@"%p", &numbFromString);
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
                }
            }
            
        }
    }
    return 0;
}
