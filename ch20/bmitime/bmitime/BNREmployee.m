//
//  BNREmployee.m
//  bmitime
//
//  Created by Donald Steinert on 5/8/15.
//  Copyright (c) 2015 Donald Steinert. All rights reserved.
//

#import "BNREmployee.h"

@implementation BNREmployee

- (double)yearsOfEmploment {
    if (self.hireDate) {
        NSDate *now = [NSDate date];
        NSTimeInterval secs = [now timeIntervalSinceDate:self.hireDate];
        return secs / 31557600.0;
    } else {
        return 0;
    }
}

- (NSString *)description {
    return [NSString stringWithFormat:@"Employee %d", self.employeeID];
}

- (float)bodyMassIndex {
    return 36.00;
}

@end
