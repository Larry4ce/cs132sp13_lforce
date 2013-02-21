#import "Calculator.h"

@implementation Calculator




- (id)init
{
    self = [super init];
    if (self)
    {

    [self clearScreen];
    [self clearOperation];
    [self clearOperation];

    }
    return self;
}

-(void)clearScreen
{
    [self setNumberOnScreen:0] ;
}

-(void)clearAccumulator
{
    [self setNumberAccumulated:0] ;
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
    {
                NSLog(@"Uncovered argument '%c' in %@ message received by object at %p (%@)", theKey, NSStringFromSelector(_cmd), self, self);
    }
    
    return;


}


-(void) appendDigit: (char) theDigit
{
            [ self setNumberOnScreen : [self numberOnScreen]*10+(theDigit-'0') ] ;
}


-(void) registerArithmetic:(char)theOperator
{
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
    [self clearOperation] ;
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
        case 99:
            return YES;
            break;
            
        case 67:
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
        case 97:
            return YES;
            break;
            
        case 65:
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
        case 62:
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

