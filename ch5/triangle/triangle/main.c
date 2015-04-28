//
//  main.c
//  triangle
//
//  Created by Donald Steinert on 4/26/15.
//  Copyright (c) 2015 Donald Steinert. All rights reserved.
//

#include <stdio.h>

float remainingAngle(float firstAngle, float secondAngle)
{
    return 180 - firstAngle - secondAngle;
}

int main(int argc, const char * argv[])
{
    float angleA = 30.0;
    float angleB = 60.0;
    float angleC = remainingAngle(angleA, angleB);
    printf("The third angle is %.1f degrees.\n", angleC);
    
    return 0;
}
