//
//  main.m
//  timestwo
//
//  Created by Donald Steinert on 5/5/15.
//  Copyright (c) 2015 Donald Steinert. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[])
{
    @autoreleasepool {

        NSDate *currentTime = nil;
        NSLog(@"The value of currentTime is %p", currentTime);
        
        currentTime = [[NSDate alloc] init];
        NSLog(@"Now, the value of currentTime is %@", currentTime);
        NSLog(@"currentTime is located at %p", currentTime);
        
        NSDate *startTime = currentTime;
        sleep(2);
        
        currentTime = [[NSDate alloc] init];
        NSLog(@"Now, the value of currentTime is %@", currentTime);
        NSLog(@"currentTime is located at %p", currentTime);
        NSLog(@"The value of startTime is %@", startTime);
        NSLog(@"startTime is located at %p", startTime);
        
        currentTime = nil;
        NSLog(@"The value of currentTime is %p", currentTime);
        
    }
    return 0;
}
