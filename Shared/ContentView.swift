//
//  ContentView.swift
//  Shared
//
//  Created by Temiloluwa on 11/01/2021.
//

import SwiftUI

struct ContentView: View {
    @State private var showtitleAlert = false
    var body: some View {
        
        Button(action: {
            
            self.showtitleAlert = true
        }) {
            
            Text("Submit")
                .padding()
                .background(Color.yellow)
                .foregroundColor(.red)
                .clipShape(Capsule())
            
            
        }.alert(isPresented: $showtitleAlert) {
            
            Alert(title: Text("Confirm Action"), message: Text("Are you sure you want to submit the form"), dismissButton: .default(Text("OK")))
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
