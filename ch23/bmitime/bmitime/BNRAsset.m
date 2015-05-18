//
//  BNRAsset.m
//  bmitime
//
//  Created by Donald Steinert on 5/9/15.
//  Copyright (c) 2015 Donald Steinert. All rights reserved.
//

#import "BNRAsset.h"
#import "BNREmployee.h"

@implementation BNRAsset

- (NSString *)description {
    if (self.holder) {
    return [NSString stringWithFormat:@"%@: $%u, assigned to %@", self.label, self.resaleValue, self.holder];
    } else {
        return [NSString stringWithFormat:@"%@: %d unassigned", self.label, self.resaleValue];
    }
}

- (void)dealloc {
    NSLog(@"deallocating %@", self);
}

@end
