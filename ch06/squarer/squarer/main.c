//
//  main.c
//  squarer
//
//  Created by Donald Steinert on 4/28/15.
//  Copyright (c) 2015 Donald Steinert. All rights reserved.
//

#include <stdio.h>
#include <stdlib.h>

#define MAX_INPUT 1000

int main(int argc, const char * argv[])
{
    // takes user input, squares input, displays result
    
    char userInput[MAX_INPUT];
    printf("Hello. Enter number to be squared: ");
    scanf("%s", userInput);
    
    printf("\"%s\" squared is \"%d\".\n", userInput, atoi(userInput) * atoi(userInput));
    
    return 0;
}
