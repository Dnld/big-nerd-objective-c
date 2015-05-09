//
//  main.c
//  classcertificates
//
//  Created by Donald Steinert on 4/26/15.
//  Copyright (c) 2015 Donald Steinert. All rights reserved.
//

#include <stdio.h>
#include <unistd.h>

void congratulateStudent(char *student, char *course, int numDays) {
    printf("%s has done as much %s Programming as I could fit into %d days.\n", student, course, numDays);
}

int main(int argc, const char * argv[])
{
    congratulateStudent("Donald", "Objective C", 5);
    sleep(2);
    congratulateStudent("Joe", "iOS", 5);
    sleep(2);
    congratulateStudent("Mike", "Python", 7);
    sleep(2);
    congratulateStudent("Kate", "Swift", 2);
    
    return 0;
}
