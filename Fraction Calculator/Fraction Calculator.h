//
//  Fraction Calculator.h
//  Fraction Calculator
//
//  Created by Larry Force on 5/2/13.
//  Copyright (c) 2013 Larry Force. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "WCSFraction.h"
#import "WCSMutableFraction.h"

typedef enum
{
    WCSEP_Top,
    WCSEP_Bottom
} WCSEntryPoint ;

@interface Fraction_Calculator : NSObject

@property (strong, readwrite) WCSMutableFraction* numberOnScreen;

@property (strong, readwrite) WCSFraction* numberAccumulated;

@property (assign) WCSEntryPoint topOrBottom;

@property (assign) char operatingPending;



-(void) pressKey: (char) theKey ;

-(void) appendDigit: (char) theDigit ;

-(void) registerArithmetic:(char)theOperator ;

-(void) computeAndDisplayResult ;

-(void)clearScreen ;

-(void)clearAccumulator ;

-(void)clearOperation ;

@end

BOOL isADigit(char someChar) ;

BOOL isClearScreenKey(char someChar) ;

BOOL isClearAllKey(char someChar) ;

BOOL isResultKey(char someChar) ;

BOOL isArithmeticAllKey(char someChar) ;



@end
