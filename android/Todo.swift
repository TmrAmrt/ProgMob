//
//  Todo.swift
//  TPProgMob
//
//  Created by “ios” on 03/12/2021.
//

import Foundation

class Todo{
    var title: String
    var description: String
    var datereal: Date
    var  category: String
    init(title: String, description: String,datereal:Date , category: String) {
        self.title = title
        self.description = description
        self.datereal = datereal
        self.category = category
    }
    
}
