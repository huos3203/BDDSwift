//
//  OCMockStubHepler.m
//  BDDExamplesSwift
//
//  Created by Xcode Server on 2017/4/27.
//  Copyright © 2017年 huoshuguang. All rights reserved.
//

#import "OCMockStubHepler.h"

@implementation OCMockStubHepler

-(OCMStubRecorder *)OCMStub:(NSObject *)invocation
{
    OCMStub(invocation);
}

-(OCMStubRecorder *)OCMExpect:(NSObject *)invocation
{
    OCMExpect(invocation);
}


-(OCMStubRecorder *)OCMReject:(NSObject *)invocation
{
    OCMReject(invocation);
}

-(void)ClassMethod:(NSObject *)invocation
{
    ClassMethod(invocation);
}

-(void)OCMVerifyAll:(OCMockObject *)mock
{
    OCMVerifyAll(mock);
}

-(void)OCMVerifyAll:(OCMockObject *)mock WithDelay:(NSTimeInterval)delay
{
    OCMVerifyAllWithDelay(mock, delay);
}

-(void)OCMVerify:(NSObject *)invocation
{
    OCMVerify(invocation);
}
@end


