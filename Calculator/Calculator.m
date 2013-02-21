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