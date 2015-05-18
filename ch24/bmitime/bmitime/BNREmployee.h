//
//  BNREmployee.h
//  bmitime
//
//  Created by Donald Steinert on 5/8/15.
//  Copyright (c) 2015 Donald Steinert. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "BNRPerson.h"
@class BNRAsset;

@interface BNREmployee : BNRPerson

@property (nonatomic) unsigned int employeeID;
@property (nonatomic) NSDate *hireDate;
@property (nonatomic, copy) NSSet *assets;

- (double)yearsOfEmploment;
- (void)addAsset:(BNRAsset *)a;
- (unsigned int)valueOfAssets;

@end
