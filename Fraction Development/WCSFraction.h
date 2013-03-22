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

-(NSComparisonResult) compareToFraction:(WCSFraction*) otherFraction

- (BOOL)isEqual:(id)other

-(NSUInteger) hash


@end


int gcd(int a, int b)
{ //Euclidean algorithm. It works!
    if(b==0) return a;
    else return gcd(b, a%b);
}


