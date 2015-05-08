//
//  main.m
//  bmitime
//
//  Created by Donald Steinert on 5/8/15.
//  Copyright (c) 2015 Donald Steinert. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "BNRPerson.h"

int main(int argc, const char * argv[])
{
    @autoreleasepool {

        // create instance of person
        BNRPerson *mike = [[BNRPerson alloc] init];
       
        mike.weightInKilos = 150;
        mike.heightInMeters = 2.1;
        
        NSLog(@"Mike's weight is %d kilos", [mike weightInKilos]);
        NSLog(@"Mike's height is %f meters", mike.heightInMeters);
        
        float mikesBmi = [mike bodyMassIndex];
        
        NSLog(@"Mike's BMI is %f", mikesBmi);
        
    }
    return 0;
}
