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


-(Fraction*)sumWith:(Fraction*) RHS
{
    
    printf(" Running sumwith method\n") ;
    
    return nil ;
}

-(Fraction*)add:(Fraction*) RHS
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

-(Fraction*)subtractFrom:(Fraction*) RHS
{
    return [self add: [negative RHS]] ;
}

-(Fraction*)minus:(Fraction*) RHS
{
    

    Fraction* theAnswer =  [self subtractFrom : RHS]
    
    return theAnswer;

}

-(Fraction*)multiply:(Fraction*) RHS
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
    
-(Fraction*)multiplyBy:(Fraction*) RHS
{
    
}

-(Fraction*)divideBy:(Fraction*) RHS
{
    
return [self multiply:[RHS reciprocal]];
    
}

-(Fraction*)divideInto:(Fraction*) RHS
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
