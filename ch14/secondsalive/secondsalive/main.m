//
//  main.m
//  secondsalive
//
//  Created by Donald Steinert on 5/5/15.
//  Copyright (c) 2015 Donald Steinert. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[])
{
    @autoreleasepool {
        
        // current date
        NSDate *now = [[NSDate alloc] init];
        
        // birth date
        NSDateComponents *comps = [[NSDateComponents alloc] init];
        [comps setYear:1984];
        [comps setMonth:3];
        [comps setDay:15];
        [comps setHour:15];
        [comps setMinute:10];
        [comps setSecond:0];
        
        NSCalendar *g = [[NSCalendar alloc] initWithCalendarIdentifier:NSGregorianCalendar];
        NSDate *myBirthDate = [g dateFromComponents:comps];
        
        double secondsAlive = [now timeIntervalSinceDate:myBirthDate];
        
        NSLog(@"You have been alive for %.2f seconds.", secondsAlive);
        
    }
    return 0;
}
