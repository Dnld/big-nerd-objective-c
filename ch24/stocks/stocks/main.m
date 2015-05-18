//
//  main.m
//  stocks
//
//  Created by Donald Steinert on 5/8/15.
//  Copyright (c) 2015 Donald Steinert. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "BNRStockHolding.h"
#import "BNRForeignStockHolding.h"
#import "BNRPortfolio.h"

int main(int argc, const char * argv[])
{
    @autoreleasepool {

        BNRPortfolio *myStocks = [[BNRPortfolio alloc] init];
        myStocks.label = @"My Stocks";
        
        BNRStockHolding *apple = [[BNRStockHolding alloc] init];
        apple.numberOfShares = 100;
        apple.purchasedSharePrice = 68.00;
        apple.currentSharePrice = 130.00;
        apple.ticker = @"a";
        [myStocks addStock:apple];
        
        BNRStockHolding *ibm = [[BNRStockHolding alloc] init];
        ibm.numberOfShares = 75;
        ibm.purchasedSharePrice = 45.00;
        ibm.currentSharePrice = 38.00;
        ibm.ticker = @"i";
        [myStocks addStock:ibm];
        
        BNRStockHolding *cisco = [[BNRStockHolding alloc] init];
        cisco.numberOfShares = 50;
        cisco.purchasedSharePrice = 150.00;
        cisco.currentSharePrice = 185.00;
        cisco.ticker = @"t";
        [myStocks addStock:cisco];
        
        BNRStockHolding *remove = [[BNRStockHolding alloc] init];
        remove.numberOfShares = 1;
        remove.purchasedSharePrice = 1.00;
        remove.currentSharePrice = 2.00;
        remove.ticker = @"r";
        [myStocks addStock:remove];
        
        [myStocks topHoldings];
        
        [myStocks sortedHoldings];
    
    }
    return 0;
}
