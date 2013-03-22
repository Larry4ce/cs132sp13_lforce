//
//  WCSFraction.m
//  Fraction Development
//
//  Created by Larry Force on 3/22/13.
//  Copyright (c) 2013 Wells CS132: Object Oriented Programming. All rights reserved.
//

#import "WCSFraction.h"

@implementation WCSFraction

-(id)init
{
    
    printf(" Running init method\n") ;
    
    return 0;
}

-(id)description
{
    
    printf(" Running description method\n") ;
    
    return 0;
}

-(WCSFraction*)negative
{
    
    int a = [self numerator];
    int b = [self denominator];
    int newNumerator = 0-a ;
    int newDenominator = 0-b ;
    WCSFraction* theAnswer = [[WCSFraction alloc] initWithNumerator:newNumerator
                                               andDenominator:newDenominator];
    return theAnswer;
}


-(WCSFraction*)reciprocal
{
    
    
    int a = [self numerator];
    int b = [self denominator];
    int newNumerator = b ;
    int newDenominator = a ;
    WCSFraction* theAnswer = [[WCSFraction alloc] initWithNumerator:newNumerator
                                               andDenominator:newDenominator];
    return theAnswer;
}


-(WCSFraction*)sumWith:(WCSFraction*)
{
    
    printf(" Running sumwith method\n") ;
    
    return nil ;
}

-(WCSFraction*)add:(WCSFraction*) ;
{
    int a =[self numerator] ;
    int b = [self denominator] ;
    int c = [RHS numerator] ;
    int d = [RHS denominator] ;
    
    int newNumerator = a*d+c*b ;
    int newDenominator = b*d ;
    
    WCSFraction* theAnswer = [[WCSFraction alloc] initWithNumerator:newNumerator
                                               andDenominator:newDenominator];
    
    
    return theAnswer
}

-(WCSFraction*)subtractFrom:(WCSFraction*)
{
    return [self add: [negative RHS]] ;
}

-(WCSFraction*)minus:(WCSFraction*)
{
    
    
    WCSFraction* theAnswer =  [self subtractFrom : RHS]
    
    return theAnswer;
    
}

-(WCSFraction*)multiply:(WCSFraction*)
{
    int a =[self numerator] ;
    int b = [self denominator] ;
    int c = [RHS numerator] ;
    int d = [RHS denominator] ;
    
    int newNumerator = a*c;
    int newDenominator = b*d ;
    
    WCSFraction* theAnswer = [[WCSFraction alloc] initWithNumerator:newNumerator
                                               andDenominator:newDenominator];
    
}

-(WCSFraction*)multiplyBy:(WCSFraction*)
{
    
}

-(WCSFraction*)divideBy:(WCSFraction*)
{
    
    return [self multiply:[RHS reciprocal]];
    
}

-(WCSFraction*)divideInto:(WCSFraction*)
{
    
    return [RHS multiply:[self reciprocal]];
    
}

-(WCSFraction*)reduced (WCSFraction*) ;
{
    int a = [self numerator];
    int b = [self denominator];
    int newNumerator = a / GCD( a , b ) ;
    int newDenominator = b / GCD( a , b ) ;
    WCSFraction* theAnswer = [[WCSFraction alloc] initWithNumerator:newNumerator
                                               andDenominator:newDenominator];
    return theAnswer;
}

@end

int GCD(int x, int y)
{
    printf("GCD function running. \n")
}

