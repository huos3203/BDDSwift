//
//  OCMockHepler.swift
//  BDDExamplesSwift
//
//  Created by Xcode Server on 2017/4/26.
//  Copyright © 2017年 huoshuguang. All rights reserved.
//
//[OC&swift中的宏定义参考](http://www.jianshu.com/p/e6ade2b24648)
import Foundation
import OCMock


public func OCMClassMock(for cls:AnyClass)-> Any!
{
//    [OCMockObject niceMockForClass:cls]
   return OCMockObject.niceMock(for: cls)
}

func OCMStrictClassMock(for cls:AnyClass)-> Any!
{
    //[OCMockObject mockForClass:cls]
    return OCMockObject.mock(for: cls)
    
}
func OCMProtocolMock(for proto:Protocol)-> Any!
{
//    [OCMockObject niceMockForProtocol:protocol]
    return OCMockObject.niceMock(for: proto)
    
}
func  OCMStrictProtocolMock(for proto:Protocol) -> Any!
{
//    [OCMockObject mockForProtocol:protocol]
    return OCMockObject.mock(for: proto)
    
}
func OCMPartialMock(for obj:NSObject)-> Any!
{
//    [OCMockObject partialMockForObject:obj]
    return OCMockObject.partialMock(for: obj)
    
}

func OCMObserverMock() -> Any!
{
   return OCMockObject.observerMock()
}

func OCMStub(_ invocation:NSObject) -> OCMStubRecorder
{
    return OCMockStubHepler().ocmStub(invocation)
}

func OCMExpect(_ invocation:NSObject)-> OCMStubRecorder
{
    return OCMockStubHepler().ocmExpect(invocation)
}

func OCMReject(_ invocation:NSObject)-> OCMStubRecorder
{
    return OCMockStubHepler().ocmReject(invocation)
}

//-(void)ClassMethod:(NSObject *)invocation
func ClassMethod(_ invocation:NSObject)
{
    OCMockStubHepler().classMethod(invocation)
}

func OCMVerifyAll(_ invocation:OCMockObject)
{
    OCMockStubHepler().ocmVerifyAll(invocation)
}

func OCMVerifyAllWithDelay(_ invocation:OCMockObject,delay:TimeInterval)
{
    OCMockStubHepler().ocmVerifyAll(invocation, withDelay: delay)
}

func OCMVerify(_ invocation:NSObject)
{
    OCMockStubHepler().ocmVerify(invocation)
}


