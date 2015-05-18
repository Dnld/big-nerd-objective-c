//
//  main.m
//  callbacks
//
//  Created by Donald Steinert on 5/18/15.
//  Copyright (c) 2015 Donald Steinert. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "BNRLogger.h"

int main(int argc, const char * argv[])
{
    @autoreleasepool {

        BNRLogger *logger = [[BNRLogger alloc] init];
        
//        [[NSNotificationCenter defaultCenter] addObserver:logger
//                                                 selector:@selector(zoneChange:)
//                                                     name:NSSystemTimeZoneDidChangeNotification
//                                                   object:nil];

        // re implementing notification center using block
        
        [[NSNotificationCenter defaultCenter] addObserverForName:NSSystemTimeZoneDidChangeNotification
                                                          object:nil
                                                           queue:nil
                                                      usingBlock:^(NSNotification *note) {
                                                          NSLog(@"the system time zone has changed!");
                                                      }];
        
        
        NSURL *url = [NSURL URLWithString:@"http://www.gutenberg.org/cache.epub/205/pg205.txt"];
        
        NSURLRequest *request = [NSURLRequest requestWithURL:url];
        
        __unused NSURLConnection *fetchConnection =
                                [[NSURLConnection alloc] initWithRequest:request
                                                                delegate:logger
                                                        startImmediately:YES];
        
        __unused NSTimer *timer = [NSTimer scheduledTimerWithTimeInterval:2.0
                                                          target:logger
                                                        selector:@selector(updateLastTime:)
                                                        userInfo:nil repeats:YES];
        [[NSRunLoop currentRunLoop] run];
        
    }
    return 0;
}
