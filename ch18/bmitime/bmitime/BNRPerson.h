//
//  BNRPerson.h
//  bmitime
//
//  Created by Donald Steinert on 5/8/15.
//  Copyright (c) 2015 Donald Steinert. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface BNRPerson : NSObject

{
    // instance variables
    float _heightInMeters;
    int _weightInKilos;
}

// methods to get and set instance variables
- (float)heightInMeters;
- (void)setHeightInMeters:(float)h;
- (int)weightInKilos;
- (void)setWeightInKilos:(int)w;

// method to calculate BMI
- (float)bodyMassIndex;

@end
