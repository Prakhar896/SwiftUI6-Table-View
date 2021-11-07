//
//  ContentView.swift
//  SwiftUI6 Table View
//
//  Created by Prakhar Trivedi on 6/11/21.
//

import SwiftUI

struct ContentView: View {
    
//    @State var todos = [
//        Todo(name: "Walk the dog", done: true),
//        Todo(name: "Eat some Nutella"),
//        Todo(name: "Conform to indetifiable")
//    ]
    
    @ObservedObject var todoManager = TodoManager()
    @State var isActive: Bool = false
    @State var updater: Bool = false
    
    var body: some View {
        NavigationView {
            VStack {
                List($todoManager.todos) { $todo in
                    NavigationLink {
                        TodoView(todo: $todo)
                    } label: {
                        HStack {
                            Image(systemName: todo.done ? "checkmark.circle.fill" : "circle")
                            Text(todo.name)
                                .strikethrough(todo.done)
                            Image(systemName: "info.circle")
                        }
                    }
                }
                .navigationTitle("My Todos")
                .toolbar {
                    ToolbarItem(placement: .navigationBarLeading) {
                        NavigationLink {
                            HelpView()
                        } label: {
                            Text("Help")
                        }
                    }
                    ToolbarItem(placement: .navigationBarTrailing) {
                        NavigationLink(isActive: $isActive) {
                            AddTodoView(isActive: $isActive, updater: $updater)
                        } label: {
                            Image(systemName: "plus")
                        }
                    }
                }
                Text("This app is copyrighted by Prakhar Trivedi 2021.\n All rights reserved.")
                    .font(.footnote)
                    .multilineTextAlignment(.center)
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
