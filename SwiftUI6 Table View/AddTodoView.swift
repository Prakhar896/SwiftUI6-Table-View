//
//  AddTodoVIew.swift
//  SwiftUI6 Table View
//
//  Created by Prakhar Trivedi on 7/11/21.
//

import SwiftUI

struct AddTodoView: View {
    
    @State var todoContent: String = ""
    @Binding var isActive: Bool
    @ObservedObject var todoManager = TodoManager()
    @Binding var updater: Bool
    
    var body: some View {
        NavigationView {
            ZStack(alignment: .top) {
                VStack(spacing: 20) {
                    Text("Let's add a new todo!")
                        .padding()
                    TextField("Enter todo content...", text: $todoContent)
                        .textFieldStyle(RoundedBorderTextFieldStyle())
                        .padding([.trailing, .leading], 10)
                    Button {
                        todoManager.addTodo(newTodo: todoContent)
                        print(todoManager.todos)
                        updater.toggle()
                        isActive = false
                    } label: {
                        Text("Add!")
                            .background(Color.blue)
                            .cornerRadius(10)
                            .frame(width: 300, height: 30, alignment: .center)
                            .foregroundColor(.white)
                    }
                }
                .padding()
            }
            Spacer()
        }
        .navigationTitle("New Todo!")
    }
}

//struct AddTodoVIew_Previews: PreviewProvider {
//    static var previews: some View {
//        AddTodoView(isActive: )
//    }
//}
