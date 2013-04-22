//
//  WCSFraction.h
//  Fraction Development
//
//  Created by Larry Force on 3/22/13.
//  Copyright (c) 2013 Wells CS132: Object Oriented Programming. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface WCSFraction : NSObject <NSCopying>

@property(readonly, assign) int numerator;

@property(readonly, assign) int denominator;

-(id) initWithNumerator:(int) theNumerator
          andDenominator:(int) theDenominator ;

-(id)initWithFraction:(WCSFraction*) theFraction ;

-(id)initWithInteger:(int) theInteger ;

-(float)floatValue ;

-(WCSFraction*)negative ;

-(WCSFraction*)reciprocal ;

-(WCSFraction*)sumWith:(WCSFraction*) theFraction ;

-(WCSFraction*)subtractFrom:(WCSFraction*) theFraction ;

-(WCSFraction*)add:(WCSFraction*) theFraction ;

-(WCSFraction*)minus:(WCSFraction*) theFraction ;

-(WCSFraction*)multiply:(WCSFraction*) theFraction ;

-(WCSFraction*)multiplyBy:(WCSFraction*) theFraction ;

-(WCSFraction*)divideBy:(WCSFraction*) theFraction ;

-(WCSFraction*)divideInto:(WCSFraction*) theFraction ;

-(NSComparisonResult) compareToFraction:(WCSFraction*) otherFraction ;

- (BOOL)isEqual:(id)other ;

-(NSUInteger) hash ;


@end


int gcd(int a, int b) ;


