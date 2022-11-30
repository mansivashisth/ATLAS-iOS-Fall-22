//
//  ContentView.swift
//  ToDoList
//
//  Created by Mansi Vashisth on 10/13/22.
//

import SwiftUI

struct ContentView: View {
    @EnvironmentObject var dataStore: DataStore
    var body: some View {
        NavigationView {
            List() {
                ForEach(dataStore.myToDos) { MyToDo in
                    Button{
                        
                    }label: {
                        Text(MyToDo.item)
                            .font(.title3)
                            .strikethrough(MyToDo.completedTask)
                            .foregroundColor(MyToDo.completedTask ? .cyan : Color(.label))
                    }
                }
            }
            .listStyle(InsetGroupedListStyle())
            .toolbar{
                ToolbarItem(placement: .principal){
                    Text("My Tasks To Do")
                        .font(.headline)
                        .foregroundColor(.indigo)
                }
                ToolbarItem(placement: .navigationBarTrailing){
                    Button {
                        
                    } label: {
                       Image(systemName: "plus.circle.fill")
                    }
                }
            }
            
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .environmentObject(DataStore())
    }
}
