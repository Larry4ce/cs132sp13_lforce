#import "Calculator.h"

@implementation Calculator

@synthesize numberOnScreen;

@synthesize numberAccumulated;

@synthesize operatingPending;

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


-(void) pressKey:(char)keyPressed
{
    int value = keyPressed-'0' ;
    
    
    if(value <= 9 && value >= 0)
    {
        numberOnScreen = [self numberOnScreen]*10+value ;
    }
    
    else
        {
            switch (keyPressed)
            {
                case 99:
                    numberOnScreen = 0;
                    break;
        
                case 67:
                    numberOnScreen = 0;
                    break;
            
                default:
            
                    NSLog(@"Uncovered argument '%c' in %@ message received by object at %p (%@)", theKey, NSStringFromSelector(_cmd), self, self);
                    break;
            }
        }
    
        
    return;
}

@end
