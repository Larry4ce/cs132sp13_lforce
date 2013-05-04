//
//  Fraction Calculator - Test.m
//  Copyright 2013 Larry Force. All rights reserved.
//
//  Created by: Larry Force
//

    // Class under test
#import "Fraction Calculator.h"
#import "WCSFraction.h"
#import "WCSMutableFraction.h"

    // Collaborators

    // Test support
#import <SenTestingKit/SenTestingKit.h>

// Uncomment the next two lines to use OCHamcrest for test assertions:
#define HC_SHORTHAND
#import <OCHamcrest/OCHamcrest.h>

// Uncomment the next two lines to use OCMockito for mock objects:
#define MOCKITO_SHORTHAND
#import <OCMockito/OCMockito.h>


@interface Test : SenTestCase
@end

@implementation Test

{
    Fraction_Calculator* sut;
}

- (void)setUp
{
    [super setUp];
    sut = [[Fraction_Calculator alloc] init];
    
}

- (void)tearDown
{
    sut= nil;
    [super tearDown];
}

- (void)testCreateCalculator
{
    assertThat(sut, isNot(nil));
}

- (void)testExample
{
    STFail(@"Some line of code Stacey told me to do...");
}

-(void)pressKeys:(NSString*) keystring
{
    for(NSUInteger i=0; i<[keystring length]; i+=1)
    {
        [sut pressKey:[keystring characterAtIndex:i]];
    }
}

//Test clear work
// (see and update existing test)
- (void)testThatClearWorks
{
    WCSFraction* temp = [[WCSFraction alloc] initWithNumerator:0 andDenominator:1];
    [self pressKeys:@"1c"];
    assertThat([sut numberOnScreen], equalTo(temp));
}

//Test AllClear work
// (see and update existing test)
- (void)testThatAllClearWorks
{
    WCSFraction* temp = [[WCSFraction alloc] initWithNumerator:0 andDenominator:1];
    [self pressKeys:@"1A"];
    assertThat([sut numberAccumulated], equalTo(temp));
}


//All other old Calculator tests, updated appropriately


//Test input to numerator
//Input: 9
//Testable result: Check that NOS is 9/1 (9)
- (void)testNOSIsNine
{
    WCSFraction* temp = [[WCSFraction alloc] initWithNumerator:9 andDenominator:1];
    [self pressKeys:@"9"];
    assertThat([sut numberOnScreen], equalTo(temp));
}

//Test multidigit input to numerator
//Input: 123
//Testable result: Check that NOS is 123
- (void)testOneTwoThree
{
    WCSFraction* temp = [[WCSFraction alloc] initWithNumerator:123 andDenominator:1];
    [self pressKeys:@"123"];
    assertThat([sut numberOnScreen], equalTo(temp));
}



//Test ???
//Input: %5
//Testable result: NOS is 0
- (void)testPercentWorks
{
    WCSFraction* temp = [[WCSFraction alloc] initWithNumerator:0 andDenominator:5];
    [self pressKeys:@"%5"];
    assertThat([sut numberOnScreen], equalTo(temp));
}



//Test input to denominator
//Test input after swap goes to denominator
//Input: 1%5
//Testable result: NOS is 1/15
- (void)testPercentWorksTwo
{
    WCSFraction* temp = [[WCSFraction alloc] initWithNumerator:1 andDenominator:5];
    [self pressKeys:@"1%5"];
    assertThat([sut numberOnScreen], equalTo(temp));
}


//Test initial input goes to numerator
//Input: 15
//Testable result: NOS is 15
- (void)testNumeratorInput
{
    WCSFraction* temp = [[WCSFraction alloc] initWithNumerator:15 andDenominator:1];
    [self pressKeys:@"15"];
    assertThat([sut numberOnScreen], equalTo(temp));
}

//Test input after second swap returns to numerator
//Input: 1%5%2
//Testable result: NOS is 4/5
- (void)testDoubleSwap
{
    WCSFraction* temp = [[WCSFraction alloc] initWithNumerator:4 andDenominator:5];
    [self pressKeys:@"1%5%2"];
    assertThat([sut numberOnScreen], equalTo(temp));
}


//Test input after doubleswap stays on numerator
//Input: 1%%2
//Testable result: NOS is 12
- (void)testDoublePercent
{
    WCSFraction* temp = [[WCSFraction alloc] initWithNumerator:12 andDenominator:1];
    [self pressKeys:@"1%%2"];
    assertThat([sut numberOnScreen], equalTo(temp));
}

//Test pushing BS deletes in numerator mode
//Input: 12<
//Testable result: NOS is 1
- (void)testBackspace
{
    WCSFraction* temp = [[WCSFraction alloc] initWithNumerator:1 andDenominator:1];
    [self pressKeys:@"12<"];
    assertThat([sut numberOnScreen], equalTo(temp));
}

//Test pushing BS deletes in denominator mode
//Input: %<
//Testable result: NOS is in error state (aka 1/0)
- (void)testDenomDelete
{
    WCSFraction* temp = [[WCSFraction alloc] initWithNumerator:1 andDenominator:0];
    [self pressKeys:@"%<"];
    assertThat([sut numberOnScreen], equalTo(temp));
}


//Test pushing BS deletes in denominator mode
//Input: 3%104<
//Testable result: NOS is in error state (aka 1/36)
- (void)testBSDeletesDenom
{
    WCSFraction* temp = [[WCSFraction alloc] initWithNumerator:1 andDenominator:36];
    [self pressKeys:@"3%104"];
    assertThat([sut numberOnScreen], equalTo(temp));
}

//Test BS with no value doesn't add value
//Input: 1234<<
//Testable result: NOS is 12

//Test BS with no value doesn't add value
//Input: 1<<
//Testable result: NOS is zero

//Test effect of deleting entire denominator
//Input: 5%<
//Result: NOS is in error mode (1/0)

//Test sequence of operations without digit input
//Input: 15+-+
//Testable result: Test Number ACCUMULATED is 15


//Check that auto-reduction works
//Input: 122/4 (366/12)
//Result: Check that NOS is 61/2

//Test fraction-fraction addition
//Input: 10/15+10/16 (2/3 + 5/8)
//Testable result: Check that number on screen is equal to 31/24

//Test fraction-fraction multiplication
//Input: 5/1 * 2/10
//Testable result: Check that NOS is 1

//Test fraction-fraction division
//similar to above

//Test fraction-fraction subtraction
//similar to above

//REtest integer-integer division
//Input: 6/4
//Result: the fraction 3/2

//REtest integer-integer "modulo"
//Input: 6%4
//Result: the fraction 3/7


@end
