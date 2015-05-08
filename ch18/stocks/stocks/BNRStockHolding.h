//
//  BNRStockHolding.h
//  stocks
//
//  Created by Donald Steinert on 5/8/15.
//  Copyright (c) 2015 Donald Steinert. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface BNRStockHolding : NSObject

// instance variables
{
    float _purchasedSharePrice;
    float _currentSharePrice;
    int _numberOfShares;
}

- (float)purchasedSharePrice;
- (void)setPurchasedSharePrice:(float)p;
- (float)currentSharePrice;
- (void)setCurrentSharePrice:(float)p;
- (int)numberOfShares;
- (void)setNumberOfShares:(int)n;

- (float)costInDollars;
- (float)valueInDollars;

@end
