//
//  main.m
//  vowelmovement
//
//  Created by Donald Steinert on 5/18/15.
//  Copyright (c) 2015 Donald Steinert. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[])
{
    @autoreleasepool {

        NSArray *originalStrings = @[@"Sauerkraut", @"Raygun", @"Big Nerd Ranch", @"Mississippi"];
        
        NSLog(@"original strings: %@", originalStrings);
        
        NSMutableArray *devowelizedStrings = [NSMutableArray array];
        
        NSArray *vowels = @[@"a", @"e", @"i", @"o", @"u"];
        
//        void (^devowelizer) (id, NSUInteger, BOOL *) = ^(id string, NSUInteger i, BOOL *stop) {
//            
//            NSMutableString *newString = [NSMutableString stringWithString:string];
//            
//            for (NSString *v in vowels) {
//                NSRange fullrange = NSMakeRange(0, [newString length]);
//                [newString replaceOccurrencesOfString:v
//                                           withString:@""
//                                              options:NSCaseInsensitiveSearch
//                                                range:fullrange];
//            }
//            
//            [devowelizedStrings addObject:newString];
//        };
        
       // passing anonymous block to enumerateUsingBlock
        
        [originalStrings enumerateObjectsUsingBlock:^(id string, NSUInteger i, BOOL *stop) {
            
            NSMutableString *newString = [NSMutableString stringWithString:string];
            
            for (NSString *v in vowels) {
                NSRange fullrange = NSMakeRange(0, [newString length]);
                [newString replaceOccurrencesOfString:v
                                           withString:@""
                                              options:NSCaseInsensitiveSearch
                                                range:fullrange];
            }
            
            [devowelizedStrings addObject:newString];
        }];
        NSLog(@"devowelized strings: %@", devowelizedStrings);
        
    }
    return 0;
}
