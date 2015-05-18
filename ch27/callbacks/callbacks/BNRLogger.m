//
//  BNRLogger.m
//  callbacks
//
//  Created by Donald Steinert on 5/18/15.
//  Copyright (c) 2015 Donald Steinert. All rights reserved.
//

#import "BNRLogger.h"

@implementation BNRLogger

//- (NSString *)lastTimeString {
//    static NSDateFormatter *dateFormatter = nil;
//    if (!dateFormatter) {
//        dateFormatter = [[NSDateFormatter alloc] init];
//        [dateFormatter setTimeStyle:NSDateFormatterMediumStyle];
//        [dateFormatter setDateStyle:NSDateFormatterMediumStyle];
//        NSLog(@"created dateFormatter");
//    }
//    return [dateFormatter stringFromDate:self.lastTime];
//}

- (void)updateLastTime:(NSTimer *)t {
    NSDate *now = [NSDate date];
    [self setLastTime:now];
    NSLog(@"just set time to %@", self.lastTime);
}

// called each time a chunk of data arrives
- (void)connection:(NSURLConnection *)connection didReceiveData:(NSData *)data {
    NSLog(@"received %lu bytes", [data length]);
    
    // create a mutable data if it does not already exist
    if (!_incomingData) {
        _incomingData = [[NSMutableData alloc] init];
    }

    [_incomingData appendData:data];

}

// called when last chunk of data received
- (void)connectionDidFinishLoading:(NSURLConnection *)connection {
    NSLog(@"got it all");
    
    NSString *stringWithAllData = [[NSString alloc] initWithData:_incomingData encoding:NSUTF8StringEncoding];
    
    _incomingData = nil;
    
    NSLog(@"the string with all the data is: %@", stringWithAllData);
}


// called if data fetch fails
- (void)connection:(NSURLConnection *) connectionDidFailWithError:(NSError *)error {
    NSLog(@"connection failed: %@", [error localizedDescription]);
    _incomingData = nil;
}

-(void)zoneChange:(NSNotification *)note {
    NSLog(@"the system time zone has changed!");
}

@end
