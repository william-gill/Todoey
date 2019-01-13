//
//  Item.swift
//  Todoey
//
//  Created by William Gill on 12.01.19.
//  Copyright © 2019 William Gill. All rights reserved.
//

import Foundation
import RealmSwift

class Item: Object {
    @objc dynamic var title : String = ""
    @objc dynamic var done : Bool = false
    @objc dynamic var dateCreated : Date = Date()

    
    //Reverse relationship definition
    var parentCategory = LinkingObjects(fromType: Category.self, property: "items")
}
