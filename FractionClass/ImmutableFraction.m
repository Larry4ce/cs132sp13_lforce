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

-(Fraction*)add:(Fraction*) ;
{
    int a =[self numerator] ;
    int b = [self denominator] ;
    int c = [RHS numerator] ;
    int d = [RHS denominator] ;
    
    int newNumerator = a*d+c*b ;
    int newDenominator = b*d ;

    Fraction* theAnswer = [[Fraction alloc] initWithNumerator:newNumerator
                                               andDenominator:newDenominator];
    
    
 return theAnswer
}

-(Fraction*)subtractFrom:(Fraction*) 
{
    return [self add: [negative RHS]] ;
}

-(Fraction*)minus:(Fraction*) 
{
    

    Fraction* theAnswer =  [self subtractFrom : RHS]
    
    return theAnswer;

}

-(Fraction*)multiply:(Fraction*)
{
int a =[self numerator] ;
int b = [self denominator] ;
int c = [RHS numerator] ;
int d = [RHS denominator] ;

int newNumerator = a*c;
int newDenominator = b*d ;

Fraction* theAnswer = [[Fraction alloc] initWithNumerator:newNumerator
                                           andDenominator:newDenominator];

}
    
-(Fraction*)multiplyBy:(Fraction*)
{
    
}

-(Fraction*)divideBy:(Fraction*) 
{
    
return [self multiply:[RHS reciprocal]];
    
}

-(Fraction*)divideInto:(Fraction*)
{

return [RHS multiply:[self reciprocal]];
    
}

-(Fraction*)reduced (Fraction*) ;
{
    int a = [self numerator];
    int b = [self denominator];
    int newNumerator = a / GCD( a , b ) ;
    int newDenominator = b / GCD( a , b ) ;
    Fraction* theAnswer = [[Fraction alloc] initWithNumerator:newNumerator
                                               andDenominator:newDenominator];
    return theAnswer;
}

@end

int GCD(int x, int y)
{
    printf("GCD function running. \n")
}
