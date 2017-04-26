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
                    mockDateFormatter = OCMockObject.mock(for: EventDescriptionFormatter.self)
                    descriptionFormatter?.dateFormatter = mockDateFormatter as! DateFormatter?
                    let startDate:NSDate = NSDate.mt_date(fromYear: 2014, month: 8, day: 21) as NSDate
                    let endDate = startDate.mt_dateHours(after: 1)
                    
                    //http://stackoverflow.com/questions/24041258/how-passing-a-protocol-as-parameter-in-swift/27162499#27162499
                    mockEvent = OCMockObject.mock(for: Event.self) as? Event
//                    OCMockObject().stub(mockEvent?.startDate)
                    
                }
                
            }
        }
        
        
        
    }
}
