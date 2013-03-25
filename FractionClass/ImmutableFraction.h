//
//  ImmutableFraction.h
//  
//
//  Created by Larry Force on 2/24/13.
//
//

#import <Cocoa/Cocoa.h>

@interface ImmutableFraction : NSObject

@property(readonly) int numerator;

@property(readonly) int denominator;

-(void)initWithNumerator:(int)andDenominator:(int) ;

-(void)initWithFraction:(Fraction*) ;

-(float)floatValue ;

-(Fraction*)negative ;

-(Fraction*)reciprocal ;

-(Fraction*)sumWith:(Fraction*) RHS ;

-(Fraction*)subtractFrom:(Fraction*) RHS ;

-(Fraction*)add:(Fraction*) RHS ;

-(Fraction*)minus:(Fraction*) RHS ;

-(Fraction*)multiply:(Fraction*) RHS ;

-(Fraction*)multiplyBy:(Fraction*) RHS ;

-(Fraction*)divideBy:(Fraction*) RHS ;

-(Fraction*)divideInto:(Fraction*) RHS ;

-(Fraction*)reduced (Fraction*) RHS ;


@end

int GCD(int x, int y) ;
