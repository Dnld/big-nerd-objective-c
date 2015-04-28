//
//  main.c
//  turkey
//
//  Created by Donald Steinert on 4/26/15.
//  Copyright (c) 2015 Donald Steinert. All rights reserved.
//

#include <stdio.h>

int main(int argc, const char * argv[])
{
    // declare the variable calles 'weight' of the type float
    float weight;
    
    // store a number in that variable
    weight = 14.2;
    
    // log it to the user
    printf("The turkey weighs %f.\n", weight);
    
    // declare another float
    float cookingTime;
    
    // calculate cooking time and store it in the variable
    cookingTime = 15 + 15 * weight;
    
    // log the cooking time to the user
    printf("Cook it for %f minutes.\n", cookingTime);
    
    return 0;    
}
