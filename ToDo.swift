//
//  ToDo.swift
//  ToDoList
//
//  Created by Mansi Vashisth on 10/13/22.
//

import Foundation

struct MyToDo: Identifiable, Codable {
    var id: String = UUID().uuidString
    var item: String
    var completedTask: Bool = false
    
    static var sampleData: [MyToDo] {
        [
            MyToDo(item: "pencil"),
            MyToDo(item: "notebook",completedTask: true)
        ]
    }
}
