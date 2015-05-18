//
//  BNREmployee.m
//  bmitime
//
//  Created by Donald Steinert on 5/8/15.
//  Copyright (c) 2015 Donald Steinert. All rights reserved.
//

#import "BNREmployee.h"
#import "BNRAsset.h"

// class extension
@interface BNREmployee ()

{
    NSMutableArray *_assets;
}

@property (nonatomic) unsigned int officeAlarmCode;

@end

// class implementation

@implementation BNREmployee

// accessor methods
- (void)setAssets:(NSArray *)a {
    _assets = [a mutableCopy];
}

- (NSArray *)assets {
    return [_assets copy];
}

- (void)addAsset:(BNRAsset *)a {
    // is assets nil?
    if (!_assets) {
        _assets = [[NSMutableArray alloc] init];
    }
    [_assets addObject:a];
    a.holder = self;
}

- (unsigned int)valueOfAssets {
    unsigned int sum = 0;
    for (BNRAsset *a in _assets) {
        sum += a.resaleValue;
    }
    return sum;
}

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
    return [NSString stringWithFormat:@"Employee %u: $%u in assets", self.employeeID, [self valueOfAssets]];
}

- (float)bodyMassIndex {
    return 36.00;
}

@end
