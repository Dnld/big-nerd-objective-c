//
//  main.m
//  datelist
//
//  Created by Donald Steinert on 5/6/15.
//  Copyright (c) 2015 Donald Steinert. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[])
{
    @autoreleasepool {

        NSDate *now = [NSDate date];
        NSDate *tomorrow = [now dateByAddingTimeInterval:24*60*60];
        NSDate *yesterday = [now dateByAddingTimeInterval:-24*60*60];
        
//        NSArray *dateList = @[now, tomorrow, yesterday];
  
        NSMutableArray *dateList = [NSMutableArray array];
        
        [dateList addObject:now];
        [dateList addObject:tomorrow];
        [dateList insertObject:yesterday atIndex:0];
        
        NSLog(@"There are %lu dates", [dateList count]);
//        NSLog(@"The date now is %@", dateList[0]);
//        NSLog(@"The date tomowwow is %@", dateList[1]);

        for (NSDate *d in dateList) {
            NSLog(@"Here is a date: %@", d);
        }
        
        NSLog(@"Removing first date...");
        sleep(2);
        
        [dateList removeObjectAtIndex:0];
        NSLog(@"The first date is now: %@", dateList[0]);
        
    }
    return 0;
}
