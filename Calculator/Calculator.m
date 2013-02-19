#import "Calculator.h"

@implementation Calculator

@synthesize numberOnScreen = _DNU_numberOnScreen ;

@synthesize numberAccumulated = _DNU_numberAccumulated ;

@synthesize operatingPending = _DNU_operatingPending ;




BOOL isADigit(char someChar) ;

BOOL isClearScreenKey(char someChar) ;



- (id)init
{
    self = [super init];
    if (self)
    {

    _DNU_:numberOnScreen = 0;
    _DNU_:numberAccumulated = 0;
    _DNU_:operatingPending = '+';
    }
    return self;
}

-(void)clearScreen
{
    numberOnScreen = 0 ;
    numberAccumulated = 0 ;
    operatingPending = 0 ;
}

-(NSString*) description
{
    return [NSString stringWithFormat:@"Calculator with %d on screen.", [self numberOnScreen ]];
}


-(void) pressKey:(char)theKey
{

    
    
    if(isADigit(theKey) == YES)
    {
        numberOnScreen = [self numberOnScreen]*10+(theKey-'0') ;
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


@end
