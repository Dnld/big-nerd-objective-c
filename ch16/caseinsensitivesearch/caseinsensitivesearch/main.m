//
//  main.m
//  caseinsensitivesearch
//
//  Created by Donald Steinert on 5/6/15.
//  Copyright (c) 2015 Donald Steinert. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {

        NSString *stringToSearch = @"the name of the man is Donald";
        NSString *name = @"donald";
        
        NSRange match = [stringToSearch rangeOfString:name
                                              options:NSCaseInsensitiveSearch];
        
        if (match.location == NSNotFound) {
            NSLog(@"Name not found");
        } else {
            NSLog(@"Name found");
        }
        
        NSString *portionOfStringWithName = [stringToSearch substringWithRange:match];
        
        NSLog(@"%@", portionOfStringWithName);
        
    }
    return 0;
}
