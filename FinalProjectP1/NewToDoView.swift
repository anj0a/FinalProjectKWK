//
//  New To-do view.swift
//  to-do list
//
//  Created by Scholar on 7/30/24.
//

import SwiftUI
import SwiftData

struct NewToDoView: View {
    
    @Bindable var toDoItem: ToDoItem
    @Environment(\.modelContext) var modelContext
    @Binding var showNewTask: Bool
    
    var body: some View {
        VStack{
            Text("Task Title:")
                .font(.system(size: 30))
                .fontWeight(.black)
            TextField("Enter Task Description", text: $toDoItem.title, axis: .vertical)
                .padding()
                .background(Color(.systemGroupedBackground))
                .cornerRadius(15)
                .padding()
            Toggle(isOn: $toDoItem.isImportant) {
                Text("Is it important?")
            } .tint(.green)
            HStack{
                
                Button{
                    addToDo()
                    self.showNewTask = false
                } label: {
                    Text("Save")
                }
                .buttonStyle(.borderedProminent)
                .tint(.green)
                
                Button {
                    withAnimation {
                        self.showNewTask = false
                    }
                } label: {
                    Text("Cancel")
                }
                .buttonStyle(.borderedProminent)
                .tint(.red)
                
            }
            
            
        } .padding()
        
        
        
    }
    func addToDo() {
        let toDo = ToDoItem(title: toDoItem.title, isImportant: toDoItem.isImportant, checkedDone: toDoItem.checkedDone, check: toDoItem.check)
        modelContext.insert(toDo)
        
    }
}

//#Preview {
//    let config = ModelConfiguration(isStoredInMemoryOnly: true)
//    let container = try! ModelContainer(for: ToDoItem.self, configurations: config)
//    let toDo = ToDoItem(title: "Example ToDo",isImportant: false )
//    return New_To_do_view(toDoItem: toDo, showNewTask: .constant(true)).modelContainer(container)
//}
