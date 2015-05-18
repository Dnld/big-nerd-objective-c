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
#import "BNRAsset.h"

int main(int argc, const char * argv[])
{
    @autoreleasepool {
        
        NSMutableArray *employees = [[NSMutableArray alloc] init];
        
        for (int i = 0; i < 10; i++) {

            BNREmployee *newEmployee = [[BNREmployee alloc] init];
            newEmployee.weightInKilos = 90.0 + i;
            newEmployee.heightInMeters = 1.8 - i / 10.0;
            newEmployee.employeeID = i;
            
            [employees addObject:newEmployee];

        }
        
        NSMutableArray *allAssets = [[NSMutableArray alloc] init];
            
        for (int i = 0; i < 10; i++) {
            BNRAsset *asset = [[BNRAsset alloc] init];
            
            asset.label = [NSString stringWithFormat:@"Laptop %d", i];
            asset.resaleValue = 350 + i * 16;
            
            NSUInteger randomInt = random() % [employees count];
            
            BNREmployee *randomEmployee = [employees objectAtIndex:randomInt];
            
            [randomEmployee addAsset:asset];
            [allAssets addObject:asset];
        }
        
        NSLog(@"Employees: %@", employees);
        
        NSLog(@"Giving up ownership of one employee...");
        sleep(2);
        
        [employees removeObjectAtIndex:5];
        
        NSLog(@"All Assets: %@", allAssets);
        
        NSLog(@"Giving up ownership of arrays...");
        sleep(2);
        
        allAssets = nil;
        employees = nil;
        
        NSLog(@"All Assets: %@", allAssets);
        
    }
    return 0;
}
