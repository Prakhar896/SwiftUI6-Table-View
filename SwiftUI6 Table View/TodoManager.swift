//
//  TodoManager.swift
//  SwiftUI6 Table View
//
//  Created by Prakhar Trivedi on 6/11/21.
//

import Foundation
import SwiftUI

class TodoManager: ObservableObject {
    
    @Published var todos = [
        Todo(name: "Walk the dog", done: true),
        Todo(name: "Eat some Nutella"),
        Todo(name: "Conform to indetifiable")
    ]
    
}
