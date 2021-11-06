//
//  SwiftUIView.swift
//  SwiftUI6 Table View
//
//  Created by Prakhar Trivedi on 6/11/21.
//

import SwiftUI

struct TodoView: View {
    @Binding var todo: Todo
    
    var body: some View {
        VStack {
            Text(todo.name)
            Button {
                todo.done.toggle()
            } label: {
                Text(todo.done ? "Mark as not done": "Mark as done")
            }
        }
    }
}

struct SwiftUIView_Previews: PreviewProvider {
    static var previews: some View {
        TodoView(todo: .constant(Todo(name: "Eat banana")))
    }
}
