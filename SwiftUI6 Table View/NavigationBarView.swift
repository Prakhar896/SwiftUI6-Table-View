//
//  NavigationBarView.swift
//  SwiftUI6 Table View
//
//  Created by Prakhar Trivedi on 6/11/21.
//

import SwiftUI

struct NavigationBarView: View {
    var body: some View {
        HStack {
            Button {
                print("this is anotha button")
            } label: {
                Text("another")
            }
            .padding()
            
            VStack {
                Text("Hello world!")
                Button {
                    print("i was pressed")
                } label: {
                    Text("Help")
                }
            }
        }
    }
}

struct NavigationBarView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationBarView()
    }
}
