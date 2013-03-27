//
//  WCSMutableFraction.m
//  Fraction Development
//
//  Created by Larry Force on 3/24/13.
//  Copyright (c) 2013 Wells CS132: Object Oriented Programming. All rights reserved.
//

#import "WCSMutableFraction.h"

@implementation WCSMutableFraction

-(void) setNumerator: (int) Num
      andDenominator: (int) Denom
{
    int GCD = gcd(Num, Denom) ;
    
    [self setNumerator: Num/GCD] ;
    [self setDenominator:Denom/GCD] ;
    
}


-(void)modifyByAdding: (WCSFraction*) Added
{
   WCSFraction* answer = [self add:Added] ;
    
    [self setNumerator: [answer numerator] andDenominator: [answer denominator]] ;
}

-(void)modifyByMultiplying: (int) Multiplied
{
    
}

-(void)modifyByInverting
{
    
}

-(void)modifyByNegating
{
    
}



@end
