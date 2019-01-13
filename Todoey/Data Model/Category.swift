//
//  Category.swift
//  Todoey
//
//  Created by William Gill on 12.01.19.
//  Copyright © 2019 William Gill. All rights reserved.
//

import Foundation
import RealmSwift

class Category: Object {
    @objc dynamic var name : String = ""
    
    let items = List<Item>()  //This defines the forward relationship from categories to items
}
