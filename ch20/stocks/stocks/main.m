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

int main(int argc, const char * argv[])
{
    @autoreleasepool {

        BNRStockHolding *apple = [[BNRStockHolding alloc] init];
        apple.numberOfShares = 100;
        apple.purchasedSharePrice = 68.00;
        apple.currentSharePrice = 130.00;
        
        BNRStockHolding *ibm = [[BNRStockHolding alloc] init];
        ibm.numberOfShares = 75;
        ibm.purchasedSharePrice = 45.00;
        ibm.currentSharePrice = 38.00;
        
        BNRStockHolding *cisco = [[BNRStockHolding alloc] init];
        cisco.numberOfShares = 50;
        cisco.purchasedSharePrice = 150.00;
        cisco.currentSharePrice = 185.00;
        
        BNRForeignStockHolding *samsung = [[BNRForeignStockHolding alloc] init];
        samsung.numberOfShares = 100;
        samsung.purchasedSharePrice = 200.00;
        samsung.currentSharePrice = 100.00;
        samsung.conversionRate = 90.00;
        
        NSArray *myStocks = @[apple, ibm, cisco, samsung];
        
        for (BNRStockHolding *s in myStocks) {
            NSLog(@"$%.2f", [s valueInDollars]);
        }
    
    }
    return 0;
}
