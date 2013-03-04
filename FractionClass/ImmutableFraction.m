//
//  ImmutableFraction.m
//  
//
//  Created by Larry Force on 2/24/13.
//
//

#import "ImmutableFraction.h"


@implementation ImmutableFraction


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

-(Fraction*)negative 
{
    
    int a = [self numerator];
    int b = [self denominator];
    int newNumerator = 0-a ;
    int newDenominator = 0-b ;
    Fraction* theAnswer = [[Fraction alloc] initWithNumerator:newNumerator
                                     andDenominator:newDenominator];
    return theAnswer;
}


-(Fraction*)reciprocal 
{
    
    
    int a = [self numerator];
    int b = [self denominator];
    int newNumerator = b ;
    int newDenominator = a ;
    Fraction* theAnswer = [[Fraction alloc] initWithNumerator:newNumerator
                                               andDenominator:newDenominator];
    return theAnswer;
}


-(Fraction*)sumWith:(Fraction*) 
{
    
    printf(" Running sumwith method\n") ;
    
    return nil ;
}

-(Fraction*)subtractFrom:(Fraction*) 
{
    
    printf(" Running subtractFrom method\n") ;
    
    return nil ;
}

-(Fraction*)minus:(Fraction*) 
{
    
    printf(" Running minus method\n") ;
    
    return nil ;
}

-(Fraction*)multiplyBy:(Fraction*) 
{
    
    printf(" Running multiplyBy method\n ") ;
    
    return nil ;
}

-(Fraction*)divideBy:(Fraction*) 
{
    
    printf(" Running divideBy method\n") ;
    
    return nil ;
}

-(Fraction*)divideInto:(Fraction*)
{
    
    printf(" Running divideInto method\n") ;
    
    return nil ;
}


@end

int GCD(int x, int y)
{
    printf("GCD function running. \n")
}
