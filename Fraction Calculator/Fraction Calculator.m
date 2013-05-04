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

@synthesize numberAccumulated;

@synthesize numberOnScreen;

@synthesize operatingPending;

@synthesize topOrBottom;



- (id)init
{
    self = [super init];
    if (self)
    {
        
        [self clearScreen];
        [self clearAccumulator];
        [self clearOperation];
        [self setTopOrBottom:WCSEP_Top];
    }
    return self;
}

-(void)clearScreen
{
    [self setNumberOnScreen:[[WCSMutableFraction alloc] initWithInteger: 0]] ;
}

-(void) clearAccumulator
{
    WCSFraction* clear = [[WCSFraction alloc] initWithNumerator:0 andDenominator:1];
    numberAccumulated = clear;
}

-(void)clearOperation
{
    [self setOperatingPending:'?'] ;
}

-(NSString*) description
{
    return [NSString stringWithFormat:@"Calculator with %@ on screen.", [self numberOnScreen ]];
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
                    [self clearAccumulator] ;
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
    WCSMutableFraction* old =[self numberOnScreen] ;
    switch ([self topOrBottom])
    {
        case WCSEP_Top:
            [old setNumerator:[old numerator]*10+theDigit];
            break;
            
        case WCSEP_Bottom:
            [old setDenominator:[old denominator]*10+theDigit];
            break;
            
            
            
        default:
            NSLog(@"ERROR!");
            break;
    }
}


-(void) registerArithmetic:(char)theOperator
{
    [self computeAndDisplayResult];
    [self setNumberAccumulated:[self numberOnScreen]];
    [self clearScreen];
    [self setOperatingPending :theOperator];
    
}


-(void) computeAndDisplayResult
{
    
    
    char operation = [self operatingPending] ;
    
    WCSMutableFraction* result = [self numberOnScreen] ;
    
    WCSFraction* accumulated = [self numberAccumulated];
    switch (operation)
    {
        case '+':
            [result modifyByAdding: accumulated ];
            break;
            
        case '-':
            [result modifyByAdding: [accumulated negative] ];
            break;
            
        case '*':
            [result modifyByMultiplying: accumulated ];
            break;
            
        case '/':
            [result modifyByMultiplying: [accumulated reciprocal] ];
            break;
            
        case '%':
        {
                if([self topOrBottom]== WCSEP_Top)
                {
                    [self setTopOrBottom: WCSEP_Bottom];
                }
                else
                if([self topOrBottom]== WCSEP_Bottom)
                {
                    [self setTopOrBottom: WCSEP_Top];
                }
                else
                {
                    NSLog(@"ERROR!");
                }
        }
            break;
            
            case '<':
        {
            result = [self numberOnScreen];
            
            if([self topOrBottom]== WCSEP_Top)
            {
                    [result setNumerator:[result numerator]/10];
            }
              else
                  if([self topOrBottom]== WCSEP_Bottom)
                  {
                      [result setDenominator:[result denominator]/10];
                  }
                  else
                    {
                        NSLog(@"ERROR!");
                    }
            
        }
            
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
            
        case '<':
            return YES;
            
        default:
            return NO ;
    }
}

    
    
    
    
    
    
    
    
    


