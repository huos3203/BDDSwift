//
//  DogLife.swift
//  BDDExamplesSwift
//
//  Created by huoshuguang on 2017/4/30.
//  Copyright © 2017年 huoshuguang. All rights reserved.
//

import UIKit

/// 狗属性，功能
class DogLife
{
    var name:String!
    var color:UIColor!
    var species:String!
    
    weak var walkPeople:dogDelegate!
    
    init(name:String,color:UIColor,specie:String)
    {
        //
        self.name = name
        self.color = color
        self.species = specie
    }
    
    func run()
    {
        //
        walkPeople.walkDog()
        print("\(name)跑的很快")
    }
}

///遛狗协议

protocol dogDelegate:NSObjectProtocol
{
    //
    func walkDog()
}

///遛狗人
class peopleWalkDog:NSObject,dogDelegate
{
    var name:String!

    var dogLife:DogLife!
    
    init(name:String) {
        super.init()
        self.name = name
        dogLife = DogLife.init(name: "旺财", color: .blue, specie: "藏獒")
        dogLife.walkPeople = self
    }
    
    func run() {
        //
        dogLife.run()
    }
    //
    func walkDog() {
        //
        print("今天遛狗")
    }
}
