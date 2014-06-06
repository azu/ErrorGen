//
//  ErrorGenTests.m
//  ErrorGenTests
//
//  Created by azu on 2014/06/06.
//  Copyright (c) 2014年 azu. All rights reserved.
//

#import <XCTest/XCTest.h>
#import "ErrorGen.h"

@interface ErrorGenTests : XCTestCase

@end

@implementation ErrorGenTests

- (void)setUp {
    [super setUp];
}

- (void)tearDown {
    [super tearDown];
}

- (void)testGenerateError {
    NSError *error = [ErrorGen errorWithDescription:@"desc"];
    XCTAssert([error isKindOfClass:[NSError class]]);
}

- (void)testErrorDomainIsBundleIdentifier {
    NSString *string = @"desc";
    NSError *error = [ErrorGen errorWithDescription:string];
    NSString *bundleIdentifier = [[NSBundle mainBundle] bundleIdentifier];
    XCTAssertEqualObjects(error.domain, bundleIdentifier);
}
- (void)testErrorWithDescription {
    NSString *string = @"desc";
    NSError *error = [ErrorGen errorWithDescription:string];
    XCTAssertNotEqualObjects(error.description, string);
}

- (void)testErrorWithLocalizedDescription {
    NSString *string = @"desc";
    NSError *error = [ErrorGen errorWithDescription:string];
    XCTAssertEqualObjects(error.localizedDescription, string);
}
@end
