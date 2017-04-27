//
//  EventDescriptionFormatterSpec.swift
//  BDDExamplesSwift
//
//  Created by Xcode Server on 2017/4/26.
//  Copyright © 2017年 huoshuguang. All rights reserved.
//

import Quick
import Nimble
import OCMock
import MTDates

@testable import BDDExamplesSwift

class EventDescriptionFormatterSpec: QuickSpec
{
    override func spec()
    {
        //测试内部实现
        describe("EventDescriptionFormatter") { 
            
            var descriptionFormatter:EventDescriptionFormatter?
            //
            beforeEach {
                //
                descriptionFormatter = EventDescriptionFormatter()
            }
            
            afterEach {
                //
                descriptionFormatter = nil
            }
            
            it("日期格式:short", closure: {
                //
                expect(descriptionFormatter?.dateFormatter?.dateStyle).to(equal(DateFormatter.Style.short))
            })
            
            it("时间格式:medium", closure: {
                //
                expect(descriptionFormatter?.dateFormatter?.timeStyle).to(equal(DateFormatter.Style.medium))
            })
            
            describe("测试日期行为") {
                var mockDateFormatter:Any?
                var eventDescription:String?
                var mockEvent:Event?
                
                beforeEach {
                    //
                    mockDateFormatter = OCMStrictClassMock(for: DateFormatter.self)
                    
                    descriptionFormatter?.dateFormatter = mockDateFormatter as! DateFormatter?
                    let startDate:NSDate = NSDate.mt_date(fromYear: 2014, month: 8, day: 21) as NSDate
                    let endDate:NSDate = startDate.mt_dateHours(after: 1) as NSDate
                    
                    //http://stackoverflow.com/questions/24041258/how-passing-a-protocol-as-parameter-in-swift/27162499#27162499
                    mockEvent = OCMStrictProtocolMock(for:Event.self) as? Event
//                    OCMockObject().stub(mockEvent?.startDate)
                   
                    let start1 = (mockEvent?.startDate)!
                    OCMStub(start1).andReturn(startDate)
                    
                    let end1 = (mockEvent?.endDate)!
                    OCMStub(end1).andReturn(endDate)
                    
                    let start:NSString? = descriptionFormatter?.dateFormatter?.string(from: startDate as Date) as NSString?
                    let end:NSString? = descriptionFormatter?.dateFormatter?.string(from: endDate as Date) as NSString?
                    
                    OCMStub(start!).andReturn("ddd")
                    OCMStub(end!).andReturn("ddddf")
                    
                    eventDescription = descriptionFormatter?.eventDescriptionFromEvent(event: mockEvent!)
                    
                    
                }
                
                it("验证开始", closure: {
                    //
                    expect(eventDescription).to(equal("Fixture Name starts at Fixture String 1 and ends at Fixture String 2."))
                })
                
            }
        }
        
        
        
    }
}
