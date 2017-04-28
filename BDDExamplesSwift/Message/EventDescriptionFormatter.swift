//
//  EventDescriptionFormatter.swift
//  BDDExamplesSwift
//
//  Created by Xcode Server on 2017/4/26.
//Users/admin/Downloads/GitRepos/Octopress/BDDExamplesSwift/README.md/  Copyright © 2017年 huoshuguang. All rights reserved.
//

import UIKit
import Foundation

@objc public protocol Event {
    //
    @objc var name:String{get}
    @objc var startDate:NSDate{get}
    @objc var endDate:NSDate{get}
    
}


public class EventDescriptionFormatter:NSObject
{
    //格式器
    
    public var dateFormatter:DateFormatter?
    
    override init() {
        //
        self.dateFormatter = DateFormatter()
        self.dateFormatter?.dateStyle = .short
        self.dateFormatter?.timeStyle = .medium
    }
    
    public func eventDescriptionFromEvent(event:Event)->String
    {
        //
        let start = self.dateFormatter?.string(from: event.startDate as Date)
        let end = self.dateFormatter?.string(from: event.endDate as Date)
        return "\(event.name) starts at \(start!) and ends at \(end!)."
    }
}
