//
//  WCSMutableFraction.m
//  Fraction Development
//
//  Created by Larry Force on 3/24/13.
//  Copyright (c) 2013 Wells CS132: Object Oriented Programming. All rights reserved.
//

#import "WCSMutableFraction.h"

@implementation WCSMutableFraction

@synthesize numerator = _AOII_numerator;
@synthesize denominator = _AOII_denominator;


-(void) setNumerator: (int) Num
      andDenominator: (int) Denom
{
    int GCD = gcd(Num, Denom) ;
    
    [self setNumerator: Num/GCD] ;
    [self setDenominator:Denom/GCD] ;
    
}

-(id)mutableCopyWithZone:(NSZone *)zone
{
    
    WCSFraction* somefraction;
    somefraction = [[WCSFraction allocWithZone:zone]initWithFraction:self];
    return somefraction;
    
}


-(void)modifyByAdding: (WCSFraction*) Added
{
   WCSFraction* answer = [self add:Added] ;
    
    [self setNumerator: [answer numerator] andDenominator: [answer denominator]] ;
}

-(void)modifyByMultiplying: (WCSFraction*) Multiplied
{

    WCSFraction* answer = [self multiplyBy:Multiplied] ;
    
    [self setNumerator: [answer numerator] andDenominator: [answer denominator]] ;
}

-(void)modifyByInverting
{
    WCSFraction* answer = [self reciprocal] ;
    
    [self setNumerator: [answer numerator] andDenominator: [answer denominator]] ;
}

-(void)modifyByNegating
{
    WCSFraction* answer = [self negative] ;
    
    [self setNumerator: [answer numerator] andDenominator: [answer denominator]] ;
}



@end
