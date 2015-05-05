//
//  main.m
//  ch13challenge0
//
//  Created by Donald Steinert on 5/5/15.
//  Copyright (c) 2015 Donald Steinert. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[])
{
    @autoreleasepool {

        NSHost *myComputer = [NSHost currentHost];
        NSString *localisedHostString = [myComputer localizedName];
        
        NSLog(@"The location of myComputer is %p", myComputer);
        NSLog(@"The value of myComputer is %@", myComputer);
        NSLog(@"The name of my computer is %@", localisedHostString);
        
    }
    return 0;
}
