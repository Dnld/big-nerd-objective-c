//
//  main.m
//  constants
//
//  Created by Donald Steinert on 5/18/15.
//  Copyright (c) 2015 Donald Steinert. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[])
{
    @autoreleasepool {

        NSLog(@"\u03c0 is %f", M_PI);
        NSLog(@"%d is larger", MAX(1, 50));
        
        NSLocale *here = [NSLocale currentLocale];
        NSString *currency = [here objectForKey:NSLocaleCurrencyCode];
        NSLog(@"the money here is %@", currency);
        
    }
    return 0;
}
