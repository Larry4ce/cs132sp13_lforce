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

-(id) initWithNumerator:(int) LHS
          andDenominator:(int) RHS ;
-(id)initWithFraction:(WCSFraction*) RHS ;
-(float)floatValue ;
-(WCSFraction*)negative ;
-(WCSFraction*)reciprocal ;
-(WCSFraction*)sumWith:(WCSFraction*) RHS ;
-(WCSFraction*)subtractFrom:(WCSFraction*) RHS ;
-(WCSFraction*)add:(WCSFraction*) RHS ;
-(WCSFraction*)minus:(WCSFraction*) RHS ;
-(WCSFraction*)multiply:(WCSFraction*) RHS ;
-(WCSFraction*)multiplyBy:(WCSFraction*) RHS ;
-(WCSFraction*)divideBy:(WCSFraction*) RHS ;
-(WCSFraction*)divideInto:(WCSFraction*) RHS ;
-(WCSFraction*)reduced : (WCSFraction*) RHS ;
-(NSComparisonResult) compareToFraction:(WCSFraction*) otherFraction ;
- (BOOL)isEqual:(id)other ;
-(NSUInteger) hash ;


@end


int gcd(int a, int b) ;


