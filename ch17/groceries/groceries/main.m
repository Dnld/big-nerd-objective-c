//
//  main.m
//  groceries
//
//  Created by Donald Steinert on 5/6/15.
//  Copyright (c) 2015 Donald Steinert. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[])
{
    @autoreleasepool {

        NSMutableArray *groceries = [NSMutableArray array];
        [groceries addObject:@"eggs"];
        [groceries addObject:@"milk"];
        [groceries addObject:@"bread"];
        
        NSLog(@"Here are the items on the grocery list:");
        for (NSString *s in groceries) {
            NSLog(@"%@", s);
        }
        
    }
    return 0;
}
