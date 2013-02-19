#import "Calculator.h"

@implementation Calculator

@synthesize numberOnScreen;

@synthesize numberAccumulated;

@synthesize operatingPending;



BOOL isADigit(char someChar) ;

BOOL isClearScreenKey(char someChar) ;

-(void)clearScreen
{
    numberOnScreen = 0 ;
    numberAccumulated = 0 ;
    operatingPending = NULL ;
}

- (id)init
{
    self = [super init];
    if (self)
    {
        //Set up initial calculator conditions here
    }
    return self;
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
