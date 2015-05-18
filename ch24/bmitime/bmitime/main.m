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
        NSMutableDictionary *executives = [[NSMutableDictionary alloc] init];
        
        for (int i = 0; i < 10; i++) {

            BNREmployee *newEmployee = [[BNREmployee alloc] init];
            newEmployee.weightInKilos = 90.0 + i;
            newEmployee.heightInMeters = 1.8 - i / 10.0;
            newEmployee.employeeID = i;
            
            [employees addObject:newEmployee];
            
            if (i == 0) {
                [executives setObject:newEmployee forKey:@"CEO"];
            }
            
            if (i == 1) {
                [executives setObject:newEmployee forKey:@"CTO"];
            }

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

        NSPredicate *minAssetsForReclaim = [NSPredicate predicateWithFormat:@"holder.valueOfAssets > 800"];
        
        NSArray *toBeReclaimed = [allAssets filteredArrayUsingPredicate:minAssetsForReclaim];
        
        NSLog(@"Assets for reclaim: %@", toBeReclaimed);
        
//        NSSortDescriptor *voa = [NSSortDescriptor sortDescriptorWithKey:@"valueOfAssets" ascending:YES];
//        
//        NSSortDescriptor *eid = [NSSortDescriptor sortDescriptorWithKey:@"employeeID" ascending:YES];
//        
//        [employees sortUsingDescriptors:@[voa, eid]];
//
//        NSLog(@"Employees by VOA: %@", employees);
        
//        NSLog(@"All Assets: %@", allAssets);
//        
//        NSLog(@"Executives: %@", executives);
//        
//        NSLog(@"CEO: %@", executives[@"CEO"]);
//        
//        executives = nil;
//        
//        NSLog(@"Giving up ownership of arrays...");
//        
//        allAssets = nil;
//        employees = nil;
        
    }
    return 0;
}
