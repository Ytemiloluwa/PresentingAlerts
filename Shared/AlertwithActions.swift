//
//  AlertwithActions.swift
//  PresentingAlerts
//
//  Created by Temiloluwa on 11/01/2021.
//

import SwiftUI

struct AlertwithActions: View {
    @State private var changeText = false
    @State private var displayText = "Tap to change Text"
    var body: some View {
        Text(displayText)
            .font(.system(size: 30))
            .foregroundColor(Color.blue)
            .onTapGesture {
                self.changeText = true
                
            }
            .alert(isPresented: $changeText) {
                
                Alert(title: Text("Changing Text"), message: Text("Do you want to chabge the display text"), primaryButton: .cancel() {
                    
                    self.changeText = false
                }, secondaryButton: .default(Text("OK")) {
                    
                    self.displayText = (self.displayText == "stay foolish") ? "stay Hungry" : "stay foolish"
                })
        }
    }
}

struct AlertwithActions_Previews: PreviewProvider {
    static var previews: some View {
        AlertwithActions()
    }
}
