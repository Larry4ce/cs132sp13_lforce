//
//  WCSFraction.h
//  Fraction Development
//
//  Created by Larry Force on 3/22/13.
//  Copyright (c) 2013 Wells CS132: Object Oriented Programming. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface WCSFraction : NSObject

@property(readonly) int numerator;

@property(readonly) int denominator;

-(void)initWithNumerator:(int)andDenominator:(int) ;

-(void)initWithFraction:(WCSFraction*) ;

-(float)floatValue ;

-(WCSFraction*)negative ;

-(WCSFraction*)reciprocal ;

-(WCSFraction*)sumWith:(WCSFraction*) ;

-(WCSFraction*)subtractFrom:(WCSFraction*) ;

-(WCSFraction*)add:(WCSFraction*) ;

-(WCSFraction*)minus:(WCSFraction*) ;

-(WCSFraction*)multiply:(WCSFraction*)

-(WCSFraction*)multiplyBy:(WCSFraction*) ;

-(WCSFraction*)divideBy:(WCSFraction*) ;

-(WCSFraction*)divideInto:(WCSFraction*) ;

-(WCSFraction*)reduced (WCSFraction*) ;


@end

int GCD(int x, int y) ;

@end
