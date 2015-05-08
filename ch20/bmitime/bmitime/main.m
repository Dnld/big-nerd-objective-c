//
//  main.m
//  bmitime
//
//  Created by Donald Steinert on 5/8/15.
//  Copyright (c) 2015 Donald Steinert. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "BNRPerson.h"
#import "BNREmployee.h"

int main(int argc, const char * argv[])
{
    @autoreleasepool {

        // create instance of person
        BNREmployee *mike = [[BNREmployee alloc] init];
        mike.employeeID = 1;
        mike.officeAlarmCode = 6666;
        mike.hireDate = [NSDate dateWithNaturalLanguageString:@"3/15/1984"];
        
        NSLog(@"Mike is employee %d, hired on %@", mike.employeeID, mike.hireDate);
        
        NSLog(@"Mike has been an employee for %lf years", [mike yearsOfEmploment]);
        
        mike.heightInMeters = 1.7;
        mike.weightInKilos = 135.00;
        NSLog(@"Mike's BMI is %.2f", [mike bodyMassIndex]);
        
        NSLog(@"Class description: %@", mike.description);
        
    }
    return 0;
}
