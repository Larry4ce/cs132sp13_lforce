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
self = [self initWithNumerator:1
         andDenominator:1 ] ;
    
    return self ;
    
}

-(id)description
{
    
    printf(" Running description method\n") ;
    
    return 0;
}


-(id) initWithNumerator:(int) LHS
           andDenominator:(int) RHS
{
    self = [super init];
    if (self) {
        //initializations
    }
    return self;
}

-(void)initWithFraction:(WCSFraction*) RHS
{
    //stub

}


-(float)floatValue
{
    //stub
    return 0 ;
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


-(WCSFraction*)sumWith:(WCSFraction*) RHS
{
    
    printf(" Running sumwith method\n") ;
    
    return nil ;
}

-(WCSFraction*)add:(WCSFraction*) RHS
{
    int a =[self numerator] ;
    int b = [self denominator] ;
    int c = [RHS numerator] ;
    int d = [RHS denominator] ;
    
    int newNumerator = a*d+c*b ;
    int newDenominator = b*d ;
    
    WCSFraction* theAnswer =
    [[WCSFraction alloc] initWithNumerator:newNumerator
                            andDenominator:newDenominator];
    
    
    return theAnswer ;
}

-(WCSFraction*)subtractFrom:(WCSFraction*) RHS
{
    return [self add: [RHS negative]] ;
}

-(WCSFraction*)minus:(WCSFraction*) RHS
{
    
    
    WCSFraction* theAnswer =  [self subtractFrom : RHS] ;
    
    return theAnswer;
    
}

-(WCSFraction*)multiply:(WCSFraction*) RHS
{
    int a =[self numerator] ;
    int b = [self denominator] ;
    int c = [RHS numerator] ;
    int d = [RHS denominator] ;
    
    int newNumerator = a*c;
    int newDenominator = b*d ;
    
    WCSFraction* theAnswer = [[WCSFraction alloc] initWithNumerator:newNumerator
                                               andDenominator:newDenominator];

    return theAnswer ;

}

-(WCSFraction*)multiplyBy:(WCSFraction*) RHS
{
    return Nil;
    
}

-(WCSFraction*)divideBy:(WCSFraction*) RHS
{
    
    return [self multiply:[RHS reciprocal]];
    
}

-(WCSFraction*)divideInto:(WCSFraction*) RHS
{
    
    return [RHS multiply:[self reciprocal]];    
}

-(WCSFraction*)reduced : (WCSFraction*) RHS
{
    int a = [self numerator];
    int b = [self denominator];
    int newNumerator = a / gcd( a , b ) ;
    int newDenominator = b / gcd( a , b ) ;
    WCSFraction* theAnswer = [[WCSFraction alloc] initWithNumerator:newNumerator
                                               andDenominator:newDenominator];
    return theAnswer;
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




