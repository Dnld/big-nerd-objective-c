//
//  main.m
//  nsstringexperiments
//
//  Created by Donald Steinert on 5/6/15.
//  Copyright (c) 2015 Donald Steinert. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[])
{
    @autoreleasepool {

        NSString *name = [[NSString alloc] init];
        NSString *myName = @"Donald";
        NSString *greeting = [NSString stringWithFormat:@"Hello, %@", name];
        
        NSUInteger myNameLength = [myName length];
        
        NSLog(@"The length of my name is %lu", myNameLength);
        if ([myName isEqualToString:@"Donald"]) {
            NSLog(@"Your name is Donald");
        }
        
        NSString *myUpperCaseName = [myName uppercaseString];
        NSLog(@"Here is my name in upper case: %@", myUpperCaseName);
        
        NSLog(@"The value of NSNotFound is: %lu", NSNotFound);
    
    }
    return 0;
}
