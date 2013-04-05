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
    
    //first core task
    
    
    WCSFraction* oneThird;
    WCSFraction* oneHalf;
    WCSFraction* answer;
    
    oneThird = [[WCSFraction alloc] initWithNumerator:1
                      andDenominator:3] ;
    
    oneHalf = [[WCSFraction alloc] initWithNumerator:1
                        andDenominator:2] ;
    
    answer = [WCSFraction alloc];
    answer = [oneHalf subtractFrom:oneThird] ;

        {
            NSLog(@"the numerator is %d and the denominator is %d", [answer numerator] , [answer denominator]) ;
        }
    
    
    
    
    //second core task
    
     WCSMutableFraction* mutant;
     WCSFraction* oneEigth;
     WCSFraction* two;
    
    mutant = [WCSMutableFraction alloc];
    [mutant setNumerator: 5
            andDenominator: 8 ] ;
    
    oneEigth = [[WCSFraction alloc] initWithNumerator:1
                         andDenominator:8] ;
    
    two = [[WCSFraction alloc] initWithNumerator:4
                    andDenominator:2] ;
    
    [mutant modifyByAdding:[oneEigth negative]];
    [mutant modifyByAdding:two] ;
    
    {
        NSLog(@"the numerator is %d and the denominator is %d", [mutant numerator] , [mutant denominator]) ;
    }
    
    return NSApplicationMain(argc, (const char **)argv);
}
