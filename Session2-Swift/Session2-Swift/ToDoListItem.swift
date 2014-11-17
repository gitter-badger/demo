//
//  ToDoListItem.swift
//  Session2-Swift
//
//  Created by Mahsa Mirza on 11/16/14.
//  Copyright (c) 2014 Mahsa. All rights reserved.
//

import UIKit

class ToDoListItem: NSObject {
    var iName: String
    var iTime: String
    var iImage: String
    var bChecked: Bool = false
    
    
    override init()
    {
        self.iName = ""
        self.iTime = ""
        self.iImage = ""
    }
    

}

