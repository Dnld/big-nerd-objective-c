//
//  main.c
//  degrees
//
//  Created by Donald Steinert on 4/26/15.
//  Copyright (c) 2015 Donald Steinert. All rights reserved.
//

#include <stdio.h>

static float lastTemp;

float farenheitFromCelsius(float cel)
{
    lastTemp = cel;
    float fahr = cel * 1.8 + 32.0;
    printf("%.2f Celsius is %.2f Farenheit.\n", cel, fahr);
    return fahr;
}

int main(int argc, const char * argv[])
{
    float freezeInCel = 0;
    float freezeInFahr = farenheitFromCelsius(freezeInCel);
    printf("Water freezes at %.2f Farenheit.\n", freezeInFahr);
    printf("The last temperature converted was %.2f.\n", lastTemp);
    
    return 0;
}
