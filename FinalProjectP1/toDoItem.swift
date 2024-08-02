//
//  toDoItem.swift
//  to-do list
//
//  Created by Scholar on 7/30/24.
//

import Foundation
import SwiftData //any screen needing data => import swift data

@Model
class ToDoItem {
    var title: String
    var isImportant: Bool
    var checkedDone: Bool
    var check: String
    
    
    init(title: String, isImportant: Bool = false, checkedDone : Bool = false, check : String) {
        self.title = title
        self.isImportant = isImportant
        self.checkedDone = checkedDone
        self.check = check
    }
}

