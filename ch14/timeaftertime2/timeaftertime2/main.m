//
//  main.m
//  timeaftertime2
//
//  Created by Donald Steinert on 5/5/15.
//  Copyright (c) 2015 Donald Steinert. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[])
{
    @autoreleasepool {
        
//        NSDate *now = [NSDate date];
//        NSLog(@"The NSDate object lives at %p.", now);
//        NSLog(@"The date is now %@.", now);
//        
//        double seconds = [now timeIntervalSince1970];
//        NSLog(@"%f seconds have passed since 1970 to the date.", seconds);
//        
//        NSDate *later = [now dateByAddingTimeInterval:100000];
//        NSLog(@"100,000 seconds from the date is %@.", later);
        
        NSDate *now = [[NSDate alloc] init];
        
        NSCalendar *myCal = [NSCalendar currentCalendar];
        NSLog(@"My calendar type is %@.", [myCal calendarIdentifier]);
        unsigned long day = [myCal ordinalityOfUnit:NSDayCalendarUnit
                                             inUnit:NSMonthCalendarUnit
                                            forDate:now];
        NSLog(@"The value of day is %lu.", day);
        unsigned long month = [myCal ordinalityOfUnit:NSMonthCalendarUnit
                                               inUnit:NSYearCalendarUnit
                                              forDate:now];
        NSLog(@"The value of month is %lu.", month);
        
        double seconds = [[NSDate date] timeIntervalSince1970];
        NSLog(@"There have been %.2f seconds since 1970.", seconds);
        
        NSString *stringToNil = nil;
        NSLog(@"The string to nil is equal to %@", stringToNil);
        
    }
    return 0;
}