//
//  BDDTest.m
//  BDDExamplesSwift
//
//  Created by Xcode Server on 2017/4/27.
//  Copyright © 2017年 huoshuguang. All rights reserved.
//

#import <XCTest/XCTest.h>
//#import <Quick/Quick.h>
//#import <OCMock/OCMock.h>
//#import <MTDates/NSDate+MTDates.h>

@import MTDates;
@import OCMock;
@import Quick;
@import Nimble;

#import "BDDExamplesSwiftTests-Swift.h"

QuickSpecBegin(DescriptionFormatterSpec)

    describe(@"格式化消息", ^{
        
        __block EventDescriptionFormatter *descriptionFormatter;
        
        beforeEach(^{
            descriptionFormatter = [[EventDescriptionFormatter alloc] init];
        });
        
        afterEach(^{
            descriptionFormatter = nil;
        });
        
        describe(@"event description from event", ^{
            
            __block id mockDateFormatter;
            __block NSString *eventDescription;
            __block id mockEvent;
            
            beforeEach(^{
                mockDateFormatter = OCMClassMock([NSDateFormatter class]);
                descriptionFormatter.dateFormatter = mockDateFormatter;
                
                NSDate *startDate = [NSDate mt_dateFromYear:2014 month:8 day:21];
                NSDate *endDate = [startDate mt_dateHoursAfter:1];
                
                mockEvent = OCMProtocolMock(@protocol(Event));
                [OCMStub([mockEvent name]) andReturn:@"Fixture Name"];
                [OCMStub([mockEvent startDate]) andReturn:startDate];
                [OCMStub([mockEvent endDate]) andReturn:endDate];
                
                [OCMStub([mockDateFormatter stringFromDate:startDate]) andReturn:@"Fixture String 1"];
                
                [OCMStub([mockDateFormatter stringFromDate:endDate]) andReturn:@"Fixture String 2"];
                
                eventDescription = [descriptionFormatter eventDescriptionFromEventWithEvent:mockEvent];
            });
            
            
            it(@"should return formatted description", ^{
                expect(eventDescription).to(equal(@"Fixture Name starts at Fixture String 1 and ends at Fixture String 2."));
            });
        });
        
        // BDD style
        
        describe(@"event description from event", ^{
            
            __block NSString *eventDescription;
            __block id mockEvent;
            
            beforeEach(^{
                NSDate *startDate = [NSDate mt_dateFromYear:2014 month:8 day:21];
                NSDate *endDate = [startDate mt_dateHoursAfter:1];
                
                mockEvent = OCMProtocolMock(@protocol(Event));
                [OCMStub([mockEvent name]) andReturn:@"Fixture Name"];
                [OCMStub([mockEvent startDate]) andReturn:startDate];
                [OCMStub([mockEvent endDate]) andReturn:endDate];
                
                eventDescription = [descriptionFormatter eventDescriptionFromEventWithEvent:mockEvent];
            });
            
            it(@"should return formatted description", ^{
                expect(eventDescription).to(equal(@"Fixture Name starts at Aug 21, 2014, 12:00 AM and ends at Aug 21, 2014, 1:00 AM."));
            });
        });
    });

QuickSpecEnd
