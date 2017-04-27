//
//  OCMockStubHepler.h
//  BDDExamplesSwift
//
//  Created by Xcode Server on 2017/4/27.
//  Copyright © 2017年 huoshuguang. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <OCMock/OCMock.h>
#import <OCMock/OCMRecorder.h>
/**
    辅助OCMockHelper.swift，将OCMock中的宏定义的方法，封装为swift中的module类型方法
 */
@interface OCMockStubHepler : NSObject

//#define OCMStub(invocation)
-(OCMStubRecorder *)OCMStub:(NSObject*)invocation;

//#define OCMExpect(invocation)
-(OCMStubRecorder *)OCMExpect:(NSObject *)invocation;

//#define OCMReject(invocation)
-(OCMStubRecorder *)OCMReject:(NSObject *)invocation;

//#define ClassMethod(invocation)
-(void)ClassMethod:(NSObject *)invocation;

//#define OCMVerifyAll(mock)
-(void)OCMVerifyAll:(OCMockObject *)mock;

//#define OCMVerifyAllWithDelay(mock, delay)
-(void)OCMVerifyAll:(OCMockObject *)mock WithDelay:(NSTimeInterval)delay;

//#define OCMVerify(invocation)
-(void)OCMVerify:(NSObject *)invocation;



//#define _OCMSilenceWarnings(macro)
@end
