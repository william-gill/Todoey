//
//  Item.swift
//  Todoey
//
//  Created by William Gill on 08.01.19.
//  Copyright © 2019 William Gill. All rights reserved.
//

import Foundation

class Item: Codable {
    var title : String
    var done : Bool
    
    init() {
        title = ""
        done = false
    }
}
