//
//  Fraction Calculator.m
//  Fraction Calculator
//
//  Created by Larry Force on 5/2/13.
//  Copyright (c) 2013 Larry Force. All rights reserved.
//

#import "Fraction Calculator.h"
#import "WCSMutableFraction.h"
#import "WCSFraction.h"

@implementation Fraction_Calculator



- (id)init
{
    self = [super init];
    if (self)
    {
        
        [self clearScreen];
        [self clearAccumulator];
        [self clearOperation];
        
    }
    return self;
}

-(void)clearScreen
{
    [self setNumberOnScreen:[[WCSMutableFraction alloc] initWithInteger: 0]] ;
}

-(void)clearAccumulator
{
    [self setNumberAccumulated:[[WCSFraction alloc] initWithInteger: 0]] ;
}

-(void)clearOperation
{
    [self setOperatingPending:'?'] ;
}

-(NSString*) description
{
    return [NSString stringWithFormat:@"Calculator with %d on screen.", [self numberOnScreen ]];
}


-(void) pressKey:(char)theKey
{
    
    
    
    if(isADigit(theKey) == YES)
    {
        [self appendDigit:theKey] ;
    }
    
    else
        if(isClearScreenKey(theKey))
        {
            [self clearScreen] ;
        }
    
        else
            if(isArithmeticAllKey(theKey))
            {
                [self registerArithmetic:theKey] ;
            }
            else
                if (isClearAllKey(theKey))
                {
                    [self clearOperation] ;
                    [self clearScreen] ;
                    [self clearOperation] ;
                }
                else
                    if(isResultKey(theKey))
                    {
                        [self computeAndDisplayResult];
                    }
    
                    else
                    {
                        NSLog(@"Uncovered argument '%c' in %@ message received by object at %p (%@)", theKey, NSStringFromSelector(_cmd), self, self);
                    }
    
    return;
    
    
}


-(void) appendDigit: (char) theDigit
{
    int old =[self numberOnScreen] ;
    [ self setNumberOnScreen : old*10+(theDigit-'0') ] ;
}


-(void) registerArithmetic:(char)theOperator
{
    [self computeAndDisplayResult] ;
    [self setNumberAccumulated : [self numberOnScreen]] ;
    [self clearScreen] ;
    [self setOperatingPending:theOperator] ;
}



-(void) computeAndDisplayResult
{
    
    int LHS = [self numberAccumulated] ;
    int RHS = [self numberOnScreen] ;
    char operation = [self operatingPending] ;
    int result = RHS ;
    
    switch (operation)
    {
        case '+':
            result = LHS + RHS;
            break;
            
        case '-':
            result = LHS - RHS;
            break;
            
        case '*':
            result = LHS * RHS;
            break;
            
        case '/':
            result = LHS / RHS;
            break;
            
        case '%':
            result = LHS % RHS;
            break;
            
            
        default:
            break;
            
    }
    
    
    [self setNumberOnScreen : result] ;
    [self clearOperation] ;
    [self clearAccumulator];
}


@end


BOOL isADigit(char someChar)
{
    int value = someChar-'0' ;
    if(value <= 9 && value >= 0)
    {
        return YES;
    }
    else
        return NO;
}


BOOL isClearScreenKey(char someChar)
{
    switch (someChar)
    {
        case 'c':
            return YES;
            break;
            
        case 'C':
            return YES;
            break;
            
        default:
            return NO ;
    }
}


BOOL isClearAllKey(char someChar)
{
    switch (someChar)
    {
        case 'a':
            return YES;
            break;
            
        case 'A':
            return YES;
            break;
            
        default:
            return NO ;
    }
}

BOOL isResultKey(char someChar)
{
    switch (someChar)
    {
        case '=':
            return YES;
            break;
            
            
        default:
            return NO ;
    }
}

BOOL isArithmeticAllKey(char someChar)
{
    switch (someChar)
    {
        case '+':
            return YES;
            break;
            
        case '-':
            return YES;
            break;
            
        case '/':
            return YES;
            break;
            
            
        case '*':
            return YES;
            break;
            
        case '%':
            return YES;
            break;
            
        default:
            return NO ;
    }
}



@end
