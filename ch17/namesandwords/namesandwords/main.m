//
//  main.m
//  namesandwords
//
//  Created by Donald Steinert on 5/6/15.
//  Copyright (c) 2015 Donald Steinert. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[])
{
    @autoreleasepool {

        NSString *nameString = [NSString stringWithContentsOfFile:@"/usr/share/dict/propernames" encoding:NSUTF8StringEncoding error:NULL];
        NSArray *names = [nameString componentsSeparatedByString:@"\n"];
        
        NSString *wordsString = [NSString stringWithContentsOfFile:@"/usr/share/dict/words" encoding:NSUTF8StringEncoding error:NULL];
        NSArray *words = [wordsString componentsSeparatedByString:@"\n"];
        
        for (NSString *name in names) {
            NSString *nameToLowerCase = [name lowercaseString];
            for (NSString *word in words) {
                if ([nameToLowerCase isEqualToString:word]) {
                    NSLog(@"%@", word);
                }
            }
        }
        
    }
    return 0;
}
