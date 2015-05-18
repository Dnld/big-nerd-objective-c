//
//  main.m
//  stringz
//
//  Created by Donald Steinert on 5/18/15.
//  Copyright (c) 2015 Donald Steinert. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[])
{
    @autoreleasepool {

//        NSMutableString *str =[[NSMutableString alloc] init];
//        for (int i = 0; i < 10; i++) {
//            [str appendString:@"Aaron is cool!\n"];
//        }
//        
//        NSError *error;
//        
//        BOOL success = [str writeToFile:@"/tmdddp/cool.txt" atomically:YES
//                               encoding:NSUTF8StringEncoding
//                                  error:&error];
//        
//
//        if (success) {
//            NSLog(@"done writing /tmp/cool.txt");
//        } else {
//            NSLog(@"writing /tmp/cool.txt failed: %@", error);
//        }
        
        NSError *error;
        NSString *str = [[NSString alloc] initWithContentsOfFile:@"/etc/resolv.conf"
                                                        encoding:NSASCIIStringEncoding
                                                           error:&error];
        if (!str) {
            NSLog(@"read failed: %@", [error localizedDescription]);
        } else {
            NSLog(@"resolf.conf looks like this: %@", str);
        }
        
    }
    return 0;
}
