//
//  main.c
//  twofloats
//
//  Created by Donald Steinert on 4/26/15.
//  Copyright (c) 2015 Donald Steinert. All rights reserved.
//

#include <stdio.h>

int main(int argc, const char * argv[])
{
    // declare two floats
    float firstFloat;
    float secondFloat;
    
    // assigning values to the two floats
    firstFloat = 56.943;
    secondFloat = 119.325432423;
    
    // declare a double for sum of two floats
    double sumOfTwoFloats;
    
    // assigning sum to double
    sumOfTwoFloats = firstFloat + secondFloat;
    
    // print result
    printf("The sum of %f and %f is %lf.\n", firstFloat, secondFloat, sumOfTwoFloats);
    
    return 0;

}
