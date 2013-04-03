//
//  main.m
//  Fraction Development
//
//  Created by Bryant Adams on 3/19/13.
//  Copyright (c) 2013 Wells CS132: Object Oriented Programming. All rights reserved.
//

#import <Cocoa/Cocoa.h>
#import "WCSFraction.h"
#import "WCSMutableFraction.h"

int main(int argc, char *argv[])
{
    
    printf("Checking if 1/3 - 1/2 works... \n") ;
    
    WCSFraction* first;
    WCSFraction* second;
    WCSFraction* answer;
    WCSFraction* goal;
    
    first = [first initWithNumerator:1 andDenominator:3] ;
    second = [second initWithNumerator:1 andDenominator:2] ;
    goal = [second initWithNumerator:-1 andDenominator:6] ;
    
    answer = [second subtractFrom:first] ;
    
    if(answer == goal)
        {
            printf("1/3 - 1/2 = -1/6 succeeded \n");
        }
    else
        {
            printf("error \n");
        }
    
    
    
    
    return NSApplicationMain(argc, (const char **)argv);
}
