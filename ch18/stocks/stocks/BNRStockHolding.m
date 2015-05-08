//
//  BNRStockHolding.m
//  stocks
//
//  Created by Donald Steinert on 5/8/15.
//  Copyright (c) 2015 Donald Steinert. All rights reserved.
//

#import "BNRStockHolding.h"

@implementation BNRStockHolding

- (float)purchasedSharePrice {
    return _purchasedSharePrice;
}

- (void)setPurchasedSharePrice:(float)p {
    _purchasedSharePrice = p;
}

- (float)currentSharePrice {
    return _currentSharePrice;
}

- (void)setCurrentSharePrice:(float)p {
    _currentSharePrice = p;
}

- (int)numberOfShares {
    return _numberOfShares;
}

- (void)setNumberOfShares:(int)n {
    _numberOfShares = n;
}

- (float)costInDollars {
    return [self costInDollars] * [self numberOfShares];
}

- (float)valueInDollars {
    return [self currentSharePrice] * [self numberOfShares];
}

@end
