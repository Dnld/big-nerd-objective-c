//
//  main.c
//  addresses
//
//  Created by Donald Steinert on 4/29/15.
//  Copyright (c) 2015 Donald Steinert. All rights reserved.
//

#include <stdio.h>

int main(int argc, const char * argv[])
{
    int i = 17;
    int *addressOfI = &i;
    printf("i stores its value at %p\n", addressOfI);
    printf("the int stored at addressOfI is %d\n", *addressOfI);
    
    *addressOfI = 5;
    
    printf("the now int stored at i is %d\n", *addressOfI);
    
    printf("the size of i is %zu\n", sizeof(*addressOfI));
    
    printf("the size of a pointer is %zu\n", sizeof(int *));
    printf("the size of an int is %zu\n", sizeof(int));
    printf("the size of a float is %zu\n", sizeof(float));
    printf("the size of a short is %zu\n", sizeof(short)):
    
    printf("this function starts at %p\n", main);
    
    return 0;
}
