//
//  WCSFraction.m
//  Fraction Development
//
//  Created by Larry Force on 3/22/13.
//  Copyright (c) 2013 Wells CS132: Object Oriented Programming. All rights reserved.
//

#import "WCSFraction.h"

@implementation WCSFraction
@synthesize numerator = _initializedNumerator;
@synthesize denominator = _initializedDenominator;

-(id)copyWithZone:(NSZone *)zone
{
    WCSFraction* somefraction;
    somefraction = [[WCSFraction allocWithZone:zone]initWithFraction:self];
    return somefraction;
}

-(id)init
{
self = [self initWithNumerator:1
         andDenominator:1 ] ;
    
    return self ;
    
}

-(id)description
{

    
return [NSString stringWithFormat: @"%d/%d" , [self numerator] , [self denominator]];
    

}


-(id) initWithNumerator:(int) theNumerator
           andDenominator:(int) theDenominator
{
    self = [super init];
    if (self) {
        _initializedNumerator = theNumerator;
        _initializedDenominator = theDenominator;
    }
    return [self reduced];
}

-(id)initWithFraction:(WCSFraction*) theFraction
{
    WCSFraction* someFraction;
    
    someFraction = [[WCSFraction alloc] initWithNumerator:[theFraction numerator] andDenominator:[theFraction denominator]];

    return someFraction;
}

-(id)initWithInteger:(int) theInteger ;
{
    WCSFraction* someFraction;
    
    someFraction = [[WCSFraction alloc] initWithNumerator:theInteger
                                           andDenominator:1 ];
    
    return someFraction;
}


-(float)floatValue
{
    if([self denominator]==0)
    {
        return 0;
    }
    else
    {
    float answer = [self numerator]/[self denominator];
    return answer ;
    }
}

-(WCSFraction*)negative
{
    
    int a = [self numerator];
    int b = [self denominator];
    int newNumerator = 0-a ;
    int newDenominator = b ;
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


-(WCSFraction*)sumWith:(WCSFraction*) theFraction
{
    
    
    return [theFraction add:self] ;
}

-(WCSFraction*)add:(WCSFraction*) theFraction
{
    int a = [self numerator] ;
    int b = [self denominator] ;
    int c = [theFraction numerator] ;
    int d = [theFraction denominator] ;
    
    int newNumerator = a*d+c*b ;
    int newDenominator = b*d ;
    
    WCSFraction* theAnswerOne =
    [[WCSFraction alloc] initWithNumerator:newNumerator
                            andDenominator:newDenominator] ;
    
    WCSFraction* theAnswerTwo = [theAnswerOne reduced];
    
    
    return theAnswerTwo ;
}

-(WCSFraction*)subtractFrom:(WCSFraction*) theFraction
{
    return [theFraction add: [self negative]] ;
}

-(WCSFraction*)minus:(WCSFraction*) theFraction
{
    
    
    WCSFraction* theAnswer =  [theFraction subtractFrom : self] ;
    
    return theAnswer;
    
}

-(WCSFraction*)multiply:(WCSFraction*) theFraction
{
    int a =[self numerator] ;
    int b = [self denominator] ;
    int c = [theFraction numerator] ;
    int d = [theFraction denominator] ;
    
    int newNumerator = a*c;
    int newDenominator = b*d ;
    
    WCSFraction* theAnswer = [[WCSFraction alloc] initWithNumerator:newNumerator
                                               andDenominator:newDenominator];

    return [theAnswer reduced] ;

}

-(WCSFraction*)multiplyBy:(WCSFraction*) theFraction
{
    WCSFraction*  theAnswer;
    
    theAnswer = [theFraction multiply: self];
    
    return theAnswer;
}

-(WCSFraction*)divideBy:(WCSFraction*) theFraction
{
    
    return [self multiply:[theFraction reciprocal]];
    
}

-(WCSFraction*)divideInto:(WCSFraction*) theFraction
{
    
    return [theFraction multiply:[self reciprocal]];
}

-(WCSFraction*)reduced
{
    int a = [self numerator];
    int b = [self denominator];
    int newNumerator = a / gcd( a , b ) ;
    int newDenominator = b / gcd( a , b ) ;
    
    if (newDenominator<0)
    {
        newDenominator = newDenominator*-1;
        newNumerator = newNumerator*-1;
    }
    
    
    WCSFraction* theAnswer = [[WCSFraction alloc] initWithNumerator:newNumerator
                                               andDenominator:newDenominator];
    
        return theAnswer ;
}


-(NSComparisonResult) compareToFraction:(WCSFraction*) otherFraction
{
    //Common math trick:
    //   Do not compare two things directly :   a  vs b
    //   Do ompare their difference to zero :  a-b vs 0
    //   It is often easiest to determine whether
    //    a value is postive, negative, or zero
    
    int difference = [[self minus: otherFraction] numerator];
    
    if(difference > 0) return NSOrderedDescending; // self > other
    if(difference < 0) return NSOrderedAscending; // self < other
    if(difference == 0) return NSOrderedSame; //self == other
    
    return NSOrderedSame; //This line should never execute
    
}

- (BOOL)isEqual:(id)other
{
    if (other == self)
        return YES; //That's ME!
    if (!other)
        return NO; //There's no "that" to compare to
    if(![other isKindOfClass:[WCSFraction class]])
        return NO; //Meh, it's not a fraction. Apples'n'oranges.
    
    return [self compareToFraction:other]==NSOrderedSame; //Comparing Fractions
}

-(NSUInteger) hash
{ //This has to do with how these could be stored in sets and dictionaries
    return MAX([self numerator], [self denominator]);
} //Wait until CS222 (Data Structures) to ask about this one

@end

int gcd(int a, int b)
{ //Euclidean algorithm. It works!
    if(b==0) return a;
    else return gcd(b, a%b);
}




