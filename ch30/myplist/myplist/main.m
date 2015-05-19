//
//  main.m
//  myplist
//
//  Created by Donald Steinert on 5/19/15.
//  Copyright (c) 2015 Donald Steinert. All rights reserved.
//

#import <Foundation/Foundation.h>

#define MARRIED     @1
#define UNMARRIED   @0

int main(int argc, const char * argv[])
{
    @autoreleasepool {

        NSMutableArray *people = [[NSMutableArray alloc] init];
        
        NSMutableDictionary *person;
        
        person = [NSMutableDictionary dictionary];
        [person setObject:@"Donald"
                   forKey:@"name"];
        [person setObject:UNMARRIED
                   forKey:@"relationship"];
        [person setObject:[NSDate dateWithNaturalLanguageString:@"March 15, 1984"]
                   forKey:@"birthday"];
        [person setObject:@30 forKey:@"age"];
        [people addObject:person];
        
        person = [NSMutableDictionary dictionary];
        [person setObject:@"Nancy"
                   forKey:@"name"];
        [person setObject:MARRIED
                   forKey:@"relationship"];
        [person setObject:[NSDate dateWithNaturalLanguageString:@"March 7, 1952"]
                   forKey:@"birthday"];
        [person setObject:@63
                   forKey:@"age"];
        [people addObject:person];
        
        [people writeToFile:@"/tmp/myplist.plist"
                 atomically:YES];
        
        NSLog(@"people: %@", people);
    }
    return 0;
}
