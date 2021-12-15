//
//  TodoList.swift
//  TPProgMob
//
//  Created by “ios” on 15/12/2021.
//

import UIKit

class TodoList: NSObject {
    var listName : String
    var todos : [Todo]
    init(name:String,todos:[Todo]) {
        self.listName = name
        self.todos = todos
    }
}
