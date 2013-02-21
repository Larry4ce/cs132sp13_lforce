#import <Foundation/Foundation.h>

@interface Calculator : NSObject

@property (assign) int numberOnScreen;

@property (assign) int numberAccumulated;

@property (assign) char operatingPending;



-(void) pressKey: (char) theKey ;

-(void) appendDigit: (char) theDigit ;

-(void) registerArithmetic:(char)theOperator ;



@end

BOOL isADigit(char someChar) ;

BOOL isClearScreenKey(char someChar) ;

BOOL isClearAllKey(char someChar) ;

BOOL isResultKey(char someChar) ;

BOOL isArithmeticAllKey(char someChar) ;