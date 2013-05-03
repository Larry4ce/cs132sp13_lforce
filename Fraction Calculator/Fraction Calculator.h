//
//  Fraction Calculator.h
//  Fraction Calculator
//
//  Created by Larry Force on 5/2/13.
//  Copyright (c) 2013 Larry Force. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Fraction_Calculator : NSObject

@property (assign) int numberOnScreen;

@property (assign) int numberAccumulated;

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
