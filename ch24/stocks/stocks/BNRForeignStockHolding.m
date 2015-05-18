//
//  BNRForeignStockHolding.m
//  stocks
//
//  Created by Donald Steinert on 5/8/15.
//  Copyright (c) 2015 Donald Steinert. All rights reserved.
//

#import "BNRForeignStockHolding.h"

@implementation BNRForeignStockHolding

- (float)costInDollars {
    return self.purchasedSharePrice * self.numberOfShares * self.conversionRate;
}

- (float)valueInDollars {
    return [super valueInDollars] * self.conversionRate;
}

@end
