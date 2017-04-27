//
//  BDDTest.m
//  BDDExamplesSwift
//
//  Created by Xcode Server on 2017/4/27.
//  Copyright © 2017年 huoshuguang. All rights reserved.
//

#import <XCTest/XCTest.h>
#import <OCMock/OCMock.h>
#import <Quick/Quick.h>
#import <Nimble/Nimble.h>


@interface BDDTest : XCTestCase

@end

@implementation BDDTest

- (void)setUp {
    [super setUp];
    // Put setup code here. This method is called before the invocation of each test method in the class.
}

- (void)tearDown {
    // Put teardown code here. This method is called after the invocation of each test method in the class.
    [super tearDown];
}

- (void)testExample {
    // This is an example of a functional test case.
    // Use XCTAssert and related functions to verify your tests produce the correct results.
    
    describe(@"格式化消息", ^{
        
    });
    
}

- (void)testPerformanceExample {
    // This is an example of a performance test case.
    [self measureBlock:^{
        // Put the code you want to measure the time of here.
    }];
}

@end
