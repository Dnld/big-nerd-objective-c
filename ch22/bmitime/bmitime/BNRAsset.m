//
//  BNRAsset.m
//  bmitime
//
//  Created by Donald Steinert on 5/9/15.
//  Copyright (c) 2015 Donald Steinert. All rights reserved.
//

#import "BNRAsset.h"

@implementation BNRAsset

- (NSString *)description {
    return [NSString stringWithFormat:@"%@: $%u", self.label, self.resaleValue];
}

- (void)dealloc {
    NSLog(@"deallocating %@", self);
}

@end
