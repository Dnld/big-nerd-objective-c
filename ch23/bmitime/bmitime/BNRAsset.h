//
//  BNRAsset.h
//  bmitime
//
//  Created by Donald Steinert on 5/9/15.
//  Copyright (c) 2015 Donald Steinert. All rights reserved.
//

#import <Foundation/Foundation.h>
@class BNREmployee;

@interface BNRAsset : NSObject

@property (nonatomic, copy) NSString *label;
@property (nonatomic, weak) BNREmployee *holder;
@property (nonatomic) unsigned int resaleValue;

- (NSString *)description;
- (void)dealloc;

@end
