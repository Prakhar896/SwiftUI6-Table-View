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
                    NavigationBarView()
                }
                Text("This app is copyrighted by Prakhar Trivedi 2021. All rights reserved.")
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
