#import "Calculator.h"

@implementation Calculator

@synthesize numberOnScreen = _DNU_numberOnScreen ;

@synthesize numberAccumulated = _DNU_numberAccumulated ;

@synthesize operatingPending = _DNU_operatingPending ;








- (id)init
{
    self = [super init];
    if (self)
    {

    _DNU_numberOnScreen = 0;
    _DNU_numberAccumulated = 0;
    _DNU_operatingPending = '+';
    }
    return self;
}

-(void)clearScreen
{
    [self setNumberOnScreen:0] ;
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
        case 47:
            return YES;
            break;
            
        case 45:
            return YES;
            break;
            
        case 43:
            return YES;
            break;
            
        case 65:
            return YES;
            break;
            
        case 37:
            return YES;
            break;
            
        case 42:
            return YES;
            break;
            
        default:
            return NO ;
    }
}
