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

-(Fraction*)sumWith:(Fraction*) ;

-(Fraction*)subtractFrom:(Fraction*) ;

-(Fraction*)minus:(Fraction*) ;

-(Fraction*)multiplyBy:(Fraction*) ;

-(Fraction*)divideBy:(Fraction*) ;

-(Fraction*)divideInto:(Fraction*) ;

-(Fraction*)reduced (Fraction*) ;


@end

int GCD(int x, int y) ;
