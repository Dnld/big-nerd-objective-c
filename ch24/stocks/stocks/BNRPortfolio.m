//
//  BNRPortfolio.m
//  stocks
//
//  Created by Donald Steinert on 5/9/15.
//  Copyright (c) 2015 Donald Steinert. All rights reserved.
//

#import "BNRPortfolio.h"
#import "BNRStockHolding.h"

// class extension
@interface BNRPortfolio ()

{
    NSMutableArray *_holdings;
}

@end


// class implementation
@implementation BNRPortfolio

- (NSArray *)holdings {
    return [_holdings copy];
}

- (void)addStock:(BNRStockHolding *)s {
    if (!_holdings) {
        _holdings = [[NSMutableArray alloc] init];
    }
    [_holdings addObject:s];
}

- (void)removeStockWithTicker:(NSString *)t {
    for (BNRStockHolding *s in _holdings) {
        if ([s.ticker isEqualToString:t]) {
            [_holdings removeObject:s];
            return;
        }
    }
}

- (float)portfolioValueInDollars {
    float sum = 0.00;
    for (BNRStockHolding *s in _holdings) {
        sum += [s valueInDollars];
    }
    return sum;
}


// description method
- (void)portfolioSummary {
    NSLog(@"Here is the summary of %@:", self.label);
    for (BNRStockHolding *s in _holdings) {
        NSString *statementLine = [NSString stringWithFormat:@"%4@\t\t shares: %d\t\t purchase price: $%8.2f\t\t current price: $%8.2f\t\t current value: $%8.2f\t\t", s.ticker, s.numberOfShares, s.purchasedSharePrice, s.currentSharePrice, s.valueInDollars];
        NSLog(statementLine);
    }
    NSLog(@"The portfolio value is $%.2f", self.portfolioValueInDollars);
}

- (void)topHoldings {
    
    NSSortDescriptor *val = [NSSortDescriptor sortDescriptorWithKey:@"valueInDollars" ascending:NO];
    
    [_holdings sortUsingDescriptors:@[val]];
    
    for (int i = 0; i < 3; i++) {
        BNRStockHolding *s = _holdings[i];
        NSString *statementLine = [NSString stringWithFormat:@"%4@\t\t shares: %d\t\t purchase price: $%8.2f\t\t current price: $%8.2f\t\t current value: $%8.2f\t\t", s.ticker, s.numberOfShares, s.purchasedSharePrice, s.currentSharePrice, s.valueInDollars];
        NSLog(statementLine);
    }
}

-(void)sortedHoldings {
    NSSortDescriptor *tic = [NSSortDescriptor sortDescriptorWithKey:@"ticker" ascending:YES];
    
    [_holdings sortUsingDescriptors:@[tic]];
    
    for (BNRStockHolding *s in _holdings) {
        NSString *statementLine = [NSString stringWithFormat:@"%4@\t\t shares: %d\t\t purchase price: $%8.2f\t\t current price: $%8.2f\t\t current value: $%8.2f\t\t", s.ticker, s.numberOfShares, s.purchasedSharePrice, s.currentSharePrice, s.valueInDollars];
        NSLog(statementLine);
    }
}

@end
