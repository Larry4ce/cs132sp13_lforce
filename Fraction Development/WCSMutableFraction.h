//
//  WCSMutableFraction.h
//  Fraction Development
//
//  Created by Larry Force on 3/24/13.
//  Copyright (c) 2013 Wells CS132: Object Oriented Programming. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "WCSFraction.h"

@interface WCSMutableFraction : WCSFraction

@property(readwrite, assign) int numerator;

@property(readwrite, assign) int denominator;



-(void) setNumerator: (void) Num
      andDenominator: (void) Denom ;
-(void)modifyByAdding: (void) Added ;
-(void)modifyByMultiplying: (void) Multiplied ;
-(void)modifyByInverting ;
-(void)modifyByNegating ;

@end
