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

@end
