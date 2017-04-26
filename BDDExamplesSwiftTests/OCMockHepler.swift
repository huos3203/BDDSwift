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

func OCMClassMock(cls:AnyClass)
{
//    [OCMockObject niceMockForClass:cls]
    OCMockObject.niceMock(for: cls)
}

func OCMStrictClassMock(cls:AnyClass)
{
    //[OCMockObject mockForClass:cls]
    OCMockObject.mock(for: cls)
    
}
func OCMProtocolMock(proto:Protocol)
{
//    [OCMockObject niceMockForProtocol:protocol]
    OCMockObject.niceMock(for: proto)
    
}
func  OCMStrictProtocolMock(proto:Protocol)
{
//    [OCMockObject mockForProtocol:protocol]
    OCMockObject.mock(for: proto)
    
}
func OCMPartialMock(obj:NSObject)
{
//    [OCMockObject partialMockForObject:obj]
    OCMockObject.partialMock(for: obj)
    
}

func OCMObserverMock()
{
//    [OCMockObject observerMock]
    OCMockObject.observerMock()
}

func OCMStub(invocation:Any)
{
    _OCMSilenceWarnings(macro: "")
}

func _OCMSilenceWarnings(macro:String)
{
//_Pragma("clang diagnostic push")
}

