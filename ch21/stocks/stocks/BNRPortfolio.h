//
//  BNRPortfolio.h
//  stocks
//
//  Created by Donald Steinert on 5/9/15.
//  Copyright (c) 2015 Donald Steinert. All rights reserved.
//

#import <Foundation/Foundation.h>
@class BNRStockHolding;

@interface BNRPortfolio : NSObject

{
    NSMutableArray *_holdings;
}

@property (nonatomic) NSString *label;
@property (nonatomic, copy) NSArray *holdings;

- (void)portfolioSummary;
- (void)addStock:(BNRStockHolding *)s;
- (void)removeStockWithTicker:(NSString *)t;
- (float)portfolioValueInDollars;

@end
