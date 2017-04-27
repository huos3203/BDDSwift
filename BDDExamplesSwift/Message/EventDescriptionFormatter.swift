//
//  EventDescriptionFormatter.swift
//  BDDExamplesSwift
//
//  Created by Xcode Server on 2017/4/26.
//  Copyright © 2017年 huoshuguang. All rights reserved.
//

import UIKit
import Foundation

@objc protocol Event {
    //
    var name:String{get}
    var startDate:NSDate{get}
    var endDate:NSDate{get}
    
}


class EventDescriptionFormatter:NSObject
{
    //格式器
    
    var dateFormatter:DateFormatter?
    
    override init() {
        //
        self.dateFormatter = DateFormatter()
        self.dateFormatter?.dateStyle = .short
        self.dateFormatter?.timeStyle = .medium
    }
    
    func eventDescriptionFromEvent(event:Event)->String
    {
        //
        return "\(event.name)开始于\(event.startDate)结束于\(event.endDate)"
    }
}
