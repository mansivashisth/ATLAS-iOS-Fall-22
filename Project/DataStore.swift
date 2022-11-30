//
//  DataStore.swift
//  ToDoList
//
//  Created by Mansi Vashisth on 10/14/22.
//

import Foundation

class DataStore: ObservableObject {
    @Published var myToDos:[MyToDo] = []
    
    init(){
        loadMyToDos()
    }
    
    func addMyToDo(_ myToDo: MyToDo){
        
    }
    func updateMyToDo(_ myToDo: MyToDo){
        
    }
    func deleteMyToDo(at indexSet: IndexSet){
        
    }
    func loadMyToDos(){
        myToDos = MyToDo.sampleData
    }
    func saveMyToDo(){
        print("save items to system")
    }
    
}
