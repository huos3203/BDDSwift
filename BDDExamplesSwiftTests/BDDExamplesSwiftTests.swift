//
//  BDDExamplesSwiftTests.swift
//  BDDExamplesSwiftTests
//
//  Created by huoshuguang on 2017/4/24.
//  Copyright © 2017年 huoshuguang. All rights reserved.
//

import XCTest
import OCMock

@testable import BDDExamplesSwift

class BDDExamplesSwiftTests: XCTestCase {
    
    override func setUp() {
        super.setUp()
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }
    
    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
    }
    
    func testExample() {
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct results.
        let proto = objc_getProtocol("BDDExamplesSwift.Event")
        var mockEvent = OCMStrictProtocolMock(for:proto!) as! BDDExamplesSwift.Event
    }
    
    func testPerformanceExample() {
        // This is an example of a performance test case.
        self.measure {
            // Put the code you want to measure the time of here.
        }
    }
    
    func testSelector() {
        //运行时，结构体，方法签名
        let selc:Selector = #selector(nihao(hh:))
        self.perform(selc, with: "dfdf")
        
        self.responds(to: <#T##Selector!#>)
        self.isMember(of: <#T##AnyClass#>)
        class_respondsToSelector(<#T##cls: AnyClass!##AnyClass!#>, <#T##sel: Selector!##Selector!#>)
        objc_getClass(<#T##name: UnsafePointer<Int8>!##UnsafePointer<Int8>!#>)
        class_getClassMethod(<#T##cls: AnyClass!##AnyClass!#>, <#T##name: Selector!##Selector!#>)
    }
    
    func nihao(hh:String)
    {
        print("-----------\(hh)")
    }
}
