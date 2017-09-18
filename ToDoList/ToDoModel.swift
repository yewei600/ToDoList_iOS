//
//  ToDoModel.swift
//  ToDoList
//
//  Created by Eric Wei on 2017-09-17.
//  Copyright © 2017 EricWei. All rights reserved.
//

import Foundation

class ToDo: NSObject {
    var title: String
    var isComplete: Bool
    var dueDate: Date
    var notes: String?
    
    init(title: String, isComplete: Bool, dueDate: Date, notes: String?) {
        guard !title.isEmpty else {
            fatalError("Reminder requires a non-empty title")
        }
        self.title = title
        self.isComplete = isComplete
        self.dueDate = dueDate
        self.notes = notes
    }
    
    static func loadToDos() -> [ToDo]? {
        return nil
    }
    
    static func loadSampleToDos() -> [ToDo] {
        let todo1 = ToDo(title: "ToDo one", isComplete: false, dueDate: Date(), notes: "Note 1")
        let todo2 = ToDo(title: "ToDo 2", isComplete: true, dueDate: Date(), notes: "Note 2")
        let todo3 = ToDo(title: "ToDo 3", isComplete: false, dueDate: Date(), notes: "Note 3")
        
        return [todo1,todo2,todo3]
    }
}
