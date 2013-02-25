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


@end
