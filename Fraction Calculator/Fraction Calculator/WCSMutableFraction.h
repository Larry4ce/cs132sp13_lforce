//
//  WCSMutableFraction.h
//  Fraction Development
//
//  Created by Larry Force on 3/24/13.
//  Copyright (c) 2013 Wells CS132: Object Oriented Programming. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "WCSFraction.h"

@interface WCSMutableFraction : WCSFraction <NSMutableCopying>

@property(readwrite, assign) int numerator;

@property(readwrite, assign) int denominator;



-(void) setNumerator: (int) Num
      andDenominator: (int) Denom ;
-(void)modifyByAdding: (WCSFraction*) Added ;
-(void)modifyByMultiplying: (WCSFraction*) Multiplied ;
-(void)modifyByInverting ;
-(void)modifyByNegating ;

@end
