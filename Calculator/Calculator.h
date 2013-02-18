#import <Foundation/Foundation.h>

@interface Calculator : NSObject

@property (assign) int numberOnScreen;

@property (assign) int numberAccumulated;

@property (assign) char operatingPending;

-(void) pressKey: (char) someUnnamedArgument ;


@end
