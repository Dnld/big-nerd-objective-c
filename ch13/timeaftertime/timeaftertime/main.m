//
//  main.m
//  timeaftertime
//
//  Created by Donald Steinert on 5/5/15.
//  Copyright (c) 2015 Donald Steinert. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[])
{
    @autoreleasepool {
        NSDate *now = [NSDate date];
        NSLog(@"The NSDate object lives at %p.", now);
        NSLog(@"The date is now %@.", now);
        
        double seconds = [now timeIntervalSince1970];
        NSLog(@"%f seconds have passed since 1970 to the date.", seconds);
        
//        double testSeconds = [NSDate timeIntervalSince1970];
//        NSDate *testDate = [now date];
//        double testSeconds = [now fooIntervalSince1970];
        
    }
    return 0;
}
