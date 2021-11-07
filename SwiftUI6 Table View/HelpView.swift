//
//  HelpView.swift
//  SwiftUI6 Table View
//
//  Created by Prakhar Trivedi on 7/11/21.
//

import SwiftUI

struct HelpView: View {
    
    @Environment(\.presentationMode) var presentation
    
    var body: some View {
        VStack {
            Text("This is a basic todos app.")
            Text("If you dont understand how to use this you shoud die.")
                .multilineTextAlignment(.center)
            Spacer()
            Button {
                self.presentation.wrappedValue.dismiss()
            } label: {
                Text("Go back")
            }
        }
    }
}

struct HelpView_Previews: PreviewProvider {
    static var previews: some View {
        HelpView()
    }
}
