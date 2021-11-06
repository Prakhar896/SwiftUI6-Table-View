//
//  Todo.swift
//  SwiftUI6 Table View
//
//  Created by Prakhar Trivedi on 6/11/21.
//
import SwiftUI

struct Todo: Identifiable {
    var id = UUID()
    var name: String
    var done = false
}
